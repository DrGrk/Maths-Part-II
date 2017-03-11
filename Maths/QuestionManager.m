//
//  QuestionManager.m
//  Maths
//
//  Created by David Guichon on 2017-03-10.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "TimeInterval.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arrayOfTimeIntervals = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)timeOuputFromTimeInterval:(TimeInterval *)timeInterval
{
    [self.arrayOfTimeIntervals addObject:timeInterval];
    NSTimeInterval outputTotalTime = [self returnTotalTime];
    NSTimeInterval outputAverageTime = [self returnAverageTime:outputTotalTime];
    NSLog(@"Total Time: %0.2f seconds Average Time: %0.2f seconds \n",outputTotalTime, outputAverageTime);
}

-(NSTimeInterval)returnTotalTime{
    NSTimeInterval totalTime = 0;
    for (TimeInterval *i in self.arrayOfTimeIntervals) {
        totalTime += i.timeIntervalValue;
    }
    return totalTime;
}

-(NSTimeInterval)returnAverageTime:(NSTimeInterval)totalTime{
    NSTimeInterval averageTime = totalTime / (self.arrayOfTimeIntervals.count);
    return averageTime;
}

@end
