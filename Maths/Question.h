//
//  Question.h
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TimeInterval;

@interface Question : NSObject

@property (nonatomic) float leftValue;
@property (nonatomic) float rightValue;

@property NSString *question;
@property (nonatomic) float answer;

-(instancetype)initWithStartTimeForTimeIntervalClass:(TimeInterval *)timeInterval;
-(void)generateNewValues;
-(NSInteger)getAnswerSetTimeInterval:(TimeInterval *)timeInterval;


@end
