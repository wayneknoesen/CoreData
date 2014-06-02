//
//  WKDiaryEntry.m
//  Ape Diary
//
//  Created by Wayne Knoesen on 31/05/14.
//  Copyright (c) 2014 Wayne Knoesen. All rights reserved.
//

#import "WKDiaryEntry.h"


@implementation WKDiaryEntry

@dynamic date;
@dynamic body;
@dynamic imageData;
@dynamic mood;
@dynamic location;

-(NSString *)sectionName {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

@end
