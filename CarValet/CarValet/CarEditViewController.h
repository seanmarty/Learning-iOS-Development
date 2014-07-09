//
//  CarEditViewController.h
//  CarValet
//
//  Created by Sean Marty on 7/7/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"
#import "CarEditViewControllerProtocol.h"

@class Car;

@interface CarEditViewController : UIViewController

@property (weak, nonatomic) id <CarEditViewControllerProtocol> delegate;
@property (strong, nonatomic) Car *currentCar;

@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UITextField *makeField;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;
@property (weak, nonatomic) IBOutlet UITextField *fuelField;




@end
