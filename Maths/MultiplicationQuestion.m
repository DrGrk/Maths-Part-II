//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(instancetype)initWithStartTimeForTimeIntervalClass:(TimeInterval *)timeInterval{
    
    if (self = [super initWithStartTimeForTimeIntervalClass:timeInterval]) {
        self.question = [NSString stringWithFormat:@"What is %0.2f * %0.2f ?\n",self.leftValue, self.rightValue];
        self.answer = self.leftValue * self.rightValue;
        NSLog(@"%@", self.question);
    }
    
    return self;
    
}

@end
