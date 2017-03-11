//
//  QuestionManager.h
//  Maths
//
//  Created by David Guichon on 2017-03-10.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AdditionQuestion;
@class TimeInterval;

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *arrayOfTimeIntervals;

-(void)timeOuputFromTimeInterval:(TimeInterval *)timeInterval;

@end
