//
//  Car.h
//  Objects
//
//  Created by Spider on 9/23/15.
//  Copyright (c) 2015 Spider. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (copy) NSString *model;

- (void)drive; // declare / defining it - instance method

+ (void)setDefaultModel:(NSString *)aModel;  // Class method

- (id)initWithModel:(NSString *)aModel;  // custom init method

@end
