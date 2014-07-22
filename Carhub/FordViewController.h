//
//  FordViewController.h
//  Carhub
//
//  Created by Christopher Clark on 7/21/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "Make.h"

@interface FordViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * carArray;
@property (nonatomic, retain) NSArray * modelArray;

@property (nonatomic, strong) Make * currentMake;



#pragma mark-
#pragma mark Class Methods
- (void) retrieveData;

@end
