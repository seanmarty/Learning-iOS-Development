//
//  Car.h
//  CarValet
//
//  Created by Sean Marty on 6/20/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int year;
@property NSString *make;
@property NSString *model;
@property float fuelAmount;
@property (readonly) NSString *carInfo;

- (id)initWithMake: (NSString *) make
             model: (NSString *) model
              year: (int) year
        fuelAmount: (float) fuelAmount;
- (void) printCarInfo;

@end
