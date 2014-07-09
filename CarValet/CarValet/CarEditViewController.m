//
//  CarEditViewController.m
//  CarValet
//
//  Created by Sean Marty on 7/7/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import "CarEditViewController.h"

@interface CarEditViewController ()

@end

@implementation CarEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *carNumberText;
    carNumberText = [NSString stringWithFormat : @"Car Number: %d",
                     [self.delegate carNumber]];
    self.carNumberLabel.text = carNumberText;
    
    self.currentCar = [self.delegate carToEdit];
    self.makeField.text = self.currentCar.make;
    self.modelField.text = self.currentCar.model;
    self.yearField.text = [NSString stringWithFormat : @"%d",
                           self.currentCar.year];
    self.fuelField.text = [NSString stringWithFormat : @"%0.2f",
                           self.currentCar.fuelAmount];
}

- (void) viewWillDisappear : (BOOL)animated {
    [super viewWillDisappear : animated];
    
    self.currentCar.make = self.makeField.text;
    self.currentCar.model = self.modelField.text;
    self.currentCar.year = [self.yearField.text integerValue];
    self.currentCar.fuelAmount = [self.fuelField.text floatValue];
    
    [self.delegate editedCarUpdated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
