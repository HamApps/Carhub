//
//  MakeViewController.h
//  Carhub
//
//  Created by Christopher Clark on 8/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Make.h"

@interface MakeViewController : UICollectionViewController

@property (nonatomic, strong) NSMutableArray * makejsonArray;
@property (nonatomic, strong) NSMutableArray * makeimageArray;
@property (nonatomic, strong) NSMutableArray * modeljsonArray;
@property (nonatomic, strong) NSMutableArray * modelArray;
@property (nonatomic, strong) NSArray * filteredArray;

@property (nonatomic, strong) Make * currentMake;

#pragma mark-
#pragma mark Class Methods
- (void) retrieveMakeImageData;
- (void) retrieveModelData;

@end
