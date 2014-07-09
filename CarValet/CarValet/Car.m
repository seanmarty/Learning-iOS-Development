//
//  Car.m
//  CarValet
//
//  Created by Sean Marty on 6/20/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id) init {
    return [self initWithMake:nil model:nil year:1900 fuelAmount:0.0f];
}
- (NSString *) carInfo {
    return [NSString stringWithFormat:
            @"Car Info\n    Make: %@\n    Model: %@\n    Year: %d",
            self.make ? self.make : @"Unknown Make",
            self.model ? self.model : @"Unknown Model",
            self.year];
}
- (id) initWithMake:(NSString *)make
              model:(NSString *)model
               year:(int)year
         fuelAmount:(float)fuelAmount {
    self = [super init];
    if (self != nil) {
        _make = [make copy];
        _model = [model copy];
        _year = year;
        _fuelAmount = fuelAmount;
    }
    
    return self;
}
- (void) printCarInfo {
    if (self.make && self.model) {
        NSLog (@"Car Make: %@", _make);
        NSLog (@"Car Model %@", _model);
        NSLog (@"Car Year: %d", _year);
        NSLog (@"Number of Gallons in Tank: %0.2f", _fuelAmount);
    }
    else {
        NSLog(@"Car undefined: no make or model specified.");
    }
}

@end
