//
//  FavoritesViewController.h
//  Carhub
//
//  Created by Christopher Clark on 8/23/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface FavoritesViewController : UITableViewController

@property(nonatomic, assign) Model * FavoriteCar;
@property(nonatomic, strong) NSMutableArray * favoritesarray;

- (void)getfirstModel:(id)firstcarObject;
- (void)loadcars;

@end
