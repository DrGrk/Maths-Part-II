//
//  TimeInterval.h
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class QuestionManager;

@interface TimeInterval : NSObject

@property (nonatomic) NSInteger timeIntervalValue;
@property (nonatomic) NSDate *timeIntervalStartTime;
@property (nonatomic) NSDate *timeIntervalEndTime;

@end
