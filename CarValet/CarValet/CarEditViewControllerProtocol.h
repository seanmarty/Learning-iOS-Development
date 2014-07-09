//
//  CarEditViewControllerProtocol.h
//  CarValet
//
//  Created by Sean Marty on 7/8/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@protocol CarEditViewControllerProtocol <NSObject>

- (Car*) carToEdit;

- (NSInteger) carNumber;

- (void) editedCarUpdated;

@end
