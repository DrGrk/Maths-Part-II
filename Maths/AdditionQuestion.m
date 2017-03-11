//
//  AdditionQuestion.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "AdditionQuestion.h"
#import "TimeInterval.h"

@implementation AdditionQuestion

-(instancetype)initWithStartTimeForTimeIntervalClass:(TimeInterval *)timeInterval{
    
    if (self = [super initWithStartTimeForTimeIntervalClass:timeInterval]) {
        self.question = [NSString stringWithFormat:@"What is %0.2f + %0.2f ?\n", self.leftValue, self.rightValue];
        self.answer = self.leftValue + self.rightValue;
        NSLog(@"%@", self.question);
    }
    return self;
}




@end
