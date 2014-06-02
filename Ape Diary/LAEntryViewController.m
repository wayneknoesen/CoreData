//
//  LANewEntryViewController.m
//  Ape Diary
//
//  Created by Wayne Knoesen on 31/05/14.
//  Copyright (c) 2014 Wayne Knoesen. All rights reserved.
//

#import "LAEntryViewController.h"
#import "WKDiaryEntry.h"
#import "LACoreDataStack.h"

@interface LAEntryViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textFeild;

@end

@implementation LAEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.entry !=nil){
        self.textFeild.text = self.entry.body;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissSelf {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)insertDiaryEntry {
    LACoreDataStack *coreDataStack = [LACoreDataStack defaultStack];
    WKDiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"WKDiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textFeild.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}

-(void)updateDiaryEntry {
    self.entry.body = self.textFeild.text;
    
    LACoreDataStack *coreDataStack = [LACoreDataStack defaultStack];
    [coreDataStack saveContext];
}


- (IBAction)doneWasPressed:(id)sender {
    if (self.entry !=nil) {
        [self updateDiaryEntry];
    } else {
    [self insertDiaryEntry];
    }
    [self dismissSelf];
}
- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
}

@end
