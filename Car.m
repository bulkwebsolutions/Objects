//
//  Car.m
//  Objects
//
//  Created by Spider on 9/23/15.
//  Copyright (c) 2015 Spider. All rights reserved.
//

#import "Car.h"
#import "ViewController.h"

static NSString *_defaultModel;

@implementation Car {
    // Private instance variables
    double _odometer;
}

- (void)drive {
    NSLog(@"Driving a %@. Vrooooom!", self.model);
    
}

+(void)setDefaultModel:(NSString *)aModel{
    _defaultModel = aModel.copy;
    NSLog(@"Driving a %@. Vrooooom!", _defaultModel);
}

// implement the custom method
- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

- (id)init {
    // Forward to the "designated" initialization method
    return [self initWithModel:_defaultModel];
}

+ (void)initialize {
    if (self == [Car class]) {
        // Makes sure this isn't executed more than once
        _defaultModel = @"Nissan Versaaaa";
    }
}

@end
