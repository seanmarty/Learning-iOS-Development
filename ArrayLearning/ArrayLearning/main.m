//
//  main.m
//  ArrayLearning
//
//  Created by Sean Marty on 7/24/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *lines = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 120; i++) {
            NSMutableArray *points = [[NSMutableArray alloc] init];
            [lines addObject:points];
            for (int j = 0; j < 600; j++) {
                NSNumber *num = [NSNumber numberWithUnsignedShort:(j+1)];
                [points addObject:num];
            }
        }
        
        for (int k = 0; k < 600; k++) {
            NSLog(@"%@", lines[10][k]);
        }
        
    }
    return 0;
}

