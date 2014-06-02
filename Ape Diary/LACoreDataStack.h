//
//  LACoreDataStack.h
//  Ape Diary
//
//  Created by Wayne Knoesen on 31/05/14.
//  Copyright (c) 2014 Wayne Knoesen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LACoreDataStack : NSObject

+ (instancetype)defaultStack;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
