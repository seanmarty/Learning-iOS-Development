//
//  ViewController.h
//  CarValet
//
//  Created by Sean Marty on 6/20/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarEditViewControllerProtocol.h"

@interface ViewController : UIViewController

<CarEditViewControllerProtocol>

@property (weak, nonatomic) IBOutlet UILabel *totalCarsLabel;
@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLabel;
- (IBAction)newCar:(id)sender;
- (IBAction)previousCar:(id)sender;
- (IBAction)nextCar:(id)sender;

@end
