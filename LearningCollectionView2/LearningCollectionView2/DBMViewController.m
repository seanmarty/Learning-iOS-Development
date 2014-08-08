//
//  DBMViewController.m
//  LearningCollectionView2
//
//  Created by Sean Marty on 8/6/14.
//  Copyright (c) 2014 dBMEDx. All rights reserved.
//

#import "DBMViewController.h"
#import "DBMSliceImageCell.h"

@interface DBMViewController ()

@property (nonatomic, strong) NSArray *sliceImagesArray;

@end

@implementation DBMViewController

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.sliceImagesArray count];
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DBMSliceImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"sliceImage" forIndexPath:indexPath];
    
    NSString *imageNameString = [self.sliceImagesArray objectAtIndex:indexPath.row];
    NSString *imageLabelString = [NSString stringWithFormat:@"Slice #%ld", (long)indexPath.row];
    
    cell.sliceImageView.image = [UIImage imageNamed:imageNameString];
    cell.sliceLabel.text = imageLabelString;
    
    
    
    return cell;
}

- (CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(141.1, 91.5);
}

- (UIEdgeInsets) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.sliceImagesArray = @[@"firstScanPlane0.png", @"firstScanPlane1.png", @"firstScanPlane2.png", @"firstScanPlane3.png", @"firstScanPlane4.png", @"firstScanPlane5.png", @"firstScanPlane6.png", @"firstScanPlane7.png"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collection View Delegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DBLog(@"%@", self.sliceImagesArray[indexPath.row]);
    [self performSegueWithIdentifier:@"imageTapZoom" sender:collectionView];
}


@end
