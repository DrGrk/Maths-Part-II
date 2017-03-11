//
//  main.m
//  Maths
//
//  Created by David Guichon on 2017-03-07.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "TimeInterval.h"
#import "QuestionFactory.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {

//Init ScoreKeeper && Init QuestionManager && Init Question Factory
        ScoreKeeper* firstScore = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];



// Set Continous Loop && Log Score
        BOOL gameOn=YES;
        while (gameOn==YES) {
            [firstScore totalScore];
            
            
//Init AdditionQuestion && Init TimeInterval
            TimeInterval *timeInterval = [[TimeInterval alloc] init];
            Question* question = [questionFactory generateRandomQuestion:timeInterval];
           
            
//"Ask for Input" Method
            NSString *objAnswerTrim = [InputHandler getTrimmedInput];
      
            
//Quit Option
            if ([objAnswerTrim isEqualToString:@"quit"]){
                gameOn = NO;
            }
            
//Convert to NSInteger and return value
            float finalInputAnswer = [objAnswerTrim floatValue];
            NSLog(@"Your answer is %0.2f\n", finalInputAnswer);
            
//Compare Value, Output Response, Update Score
            if (finalInputAnswer == [question getAnswerSetTimeInterval:timeInterval]){
                NSLog(@"You Are Correct\n\n");
                firstScore.correctScore +=1;
                
            }
            if (finalInputAnswer != [question getAnswerSetTimeInterval:timeInterval]){
                NSLog(@"You Are Very Wrong\n\n");
                firstScore.incorrectScore +=1;
            }
            
            [questionManager timeOuputFromTimeInterval:timeInterval];
            
        }
        
    }
    return 0;
}
