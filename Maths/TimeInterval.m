//
//  TimeInterval.m
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "TimeInterval.h"
#import "QuestionManager.h"

@implementation TimeInterval

-(NSInteger)timeIntervalValue{
    NSInteger timeIntervalValueReturn = [self.timeIntervalEndTime timeIntervalSinceDate:self.timeIntervalStartTime];
    return timeIntervalValueReturn;
}

@end
