//
//  DBMViewController.h
//  LearningCollectionView2
//
//  Created by Sean Marty on 8/6/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBMViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIGestureRecognizerDelegate>

@property (nonatomic, weak) IBOutlet UICollectionView *myCollectionView;

@end
