//
//  WKDiaryEntry.h
//  Ape Diary
//
//  Created by Wayne Knoesen on 31/05/14.
//  Copyright (c) 2014 Wayne Knoesen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, WKDiaryEntryMood) {
    WKDiaryEntryMoodGood = 0,
    WKDiaryEntryMoodAverage = 1,
    WKDiaryEntryMoodBad = 2,
};


@interface WKDiaryEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@property (nonatomic, readonly) NSString *sectionName;

@end
