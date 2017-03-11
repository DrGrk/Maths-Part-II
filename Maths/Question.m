//
//  Question.m
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Question.h"
#import "TimeInterval.h"

@implementation Question

-(instancetype)initWithStartTimeForTimeIntervalClass:(TimeInterval *)timeInterval{
    if (self == [super init]){
        [self generateNewValues];
        timeInterval.timeIntervalStartTime = [NSDate date];
    }
    return self;
}

-(void)generateNewValues{
    _leftValue = arc4random_uniform(90)+10;
    _rightValue =  arc4random_uniform(90)+10;
}


-(NSInteger)getAnswerSetTimeInterval:(TimeInterval *)timeInterval{
    timeInterval.timeIntervalEndTime = [NSDate date];
    return _answer;
}





@end
