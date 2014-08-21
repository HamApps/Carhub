//
//  ModelViewController.h
//  Carhub
//
//  Created by Christopher Clark on 8/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "MakeViewController.h"

@interface ModelViewController : UITableViewController
@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * carArray;
@property (nonatomic, retain) NSArray * ModelArray;


@property (nonatomic, strong) Model * currentModel;
@property (nonatomic, strong) Make * currentMake;
#pragma mark-
#pragma mark Class Methods
- (void)getMake:(id)makeObject;
- (void) retrieveData;
@end
