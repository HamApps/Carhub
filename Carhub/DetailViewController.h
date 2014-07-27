//
//  DetailViewController.h
//  Carhub
//
//  Created by Christopher Clark on 7/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import <iAd/iAd.h>
/*
@interface ViewController : UIViewController <ADBannerViewDelegate>
@end
*/
@interface DetailViewController : UIViewController<ADBannerViewDelegate, UIGestureRecognizerDelegate>
{
    IBOutlet UIImageView *imageview;
    IBOutlet UIScrollView * scroller;
}

@property(nonatomic, strong) IBOutlet UILabel * CarMakeLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarModelLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarYearsMadeLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarPriceLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarEngineLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarTransmissionLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarDriveTypeLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarHorsepowerLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarZeroToSixtyLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarTopSpeedLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarWeightLabel;
@property(nonatomic, strong) IBOutlet UILabel * CarFuelEconomyLabel;

@property(nonatomic, strong) Model * currentCar;

#pragma mark -
#pragma mark Methods

- (void)getfirstModel:(id)firstcarObject3;
@property(nonatomic, strong) Model * firstCar3;
@property(nonatomic, strong) Model * secondCar3;
@property(nonatomic, strong) ADBannerView *UIiAD;
- (void)getModel:(id)modelObject;
- (void)setLabels;
@end
