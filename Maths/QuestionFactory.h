//
//  QuestionFactory.h
//  Maths
//
//  Created by David Guichon on 2017-03-11.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;
@class TimeInterval;

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSString *questionSubclassNames;

-(Question *)generateRandomQuestion:(TimeInterval *)timeInterval;

@end
