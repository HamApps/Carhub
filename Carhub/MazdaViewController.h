//
//  MazdaViewController.h
//  Carhub
//
//  Created by Christopher Clark on 7/21/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "Make.h"

@interface MazdaViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * carArray;
@property (nonatomic, retain) NSArray * modelArray;

@property (nonatomic, strong) Make * currentMake;

- (void)getfirstModel:(id)firstcarObject2;
@property(nonatomic, strong) Model * firstCar2;


#pragma mark-
#pragma mark Class Methods
- (void) retrieveData;

@end
