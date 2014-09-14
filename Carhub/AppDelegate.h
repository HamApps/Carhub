//
//  AppDelegate.h
//  Carhub
//
//  Created by Ethan Esval on 7/18/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "iRate.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ADBannerView *UIiAD;
@property (nonatomic, retain) NSMutableArray * favoritesarray;
+ (void)initialize;

@end
