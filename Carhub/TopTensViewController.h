//
//  TopTensViewController.h
//  Carhub
//
//  Created by Ethan Esval on 7/23/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface TopTensViewController : UIViewController <ADBannerViewDelegate>
@property(nonatomic, strong)ADBannerView *UliAD;
@property (nonatomic, retain) NSMutableArray * toptensarray;

@end


