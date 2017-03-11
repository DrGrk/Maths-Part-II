//
//  QuestionFactory.m
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "QuestionFactory.h"
#import "TimeInterval.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion:(TimeInterval *)timeInterval{
    NSInteger randomValue =  arc4random_uniform(400) %4;
    if (randomValue == 0 ){
    Question *addition = [[AdditionQuestion alloc] initWithStartTimeForTimeIntervalClass:timeInterval];
    return addition;
    }
    else if (randomValue == 1 ){
        Question *subtraction = [[SubtractionQuestion alloc] initWithStartTimeForTimeIntervalClass:timeInterval];
        return subtraction;
    }
    else if (randomValue == 2 ){
        Question *multiplication = [[MultiplicationQuestion alloc] initWithStartTimeForTimeIntervalClass:timeInterval];
        return multiplication;
    }
    else{
        Question *division = [[DivisionQuestion alloc] initWithStartTimeForTimeIntervalClass:timeInterval];
        return division;
    }

}

        //FIND OUT IF ITS POSSIBLE TO DO A SWITCH STATEMENT

//-(Question *)generateQuestion:(TimeInterval *)timeInterval{
//    NSInteger randomValue = arc4random_uniform(400) %4;
//    switch (randomValue) {
//        case 0:
//            Question *addition = [[AdditionQuestion alloc] initWithStartTimeForTimeIntervalClass:timeInterval];
//            return addition;
//            break;
//            
//        default:
//            break;
//    }
//}

@end
