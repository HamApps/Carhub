//
//  MakesViewController.h
//  Carhub
//
//  Created by Christopher Clark on 7/19/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakesViewController : UICollectionViewController

@property (nonatomic, strong) NSMutableArray * makejsonArray;
@property (nonatomic, strong) NSMutableArray * makeimageArray;
@property (nonatomic, strong) NSMutableArray * modeljsonArray;
@property (nonatomic, strong) NSMutableArray * modelArray;

#pragma mark-
#pragma mark Class Methods
- (void) retrieveMakeImageData;
- (void) retrieveModelData;

@end
