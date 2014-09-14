//
//  CompareViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/22/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "CompareViewController.h"
#import "AppDelegate.h"
#import "FavoritesClass.h"

@interface CompareViewController ()

@end

@implementation CompareViewController

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    _UIiAD
    = [[self appdelegate]UIiAD];
    _UIiAD.delegate = self;
    [_UIiAD setFrame:CGRectMake(0,518,320,50)];
    [self.view addSubview:_UIiAD];
}

-(void) viewWillDisappear:(BOOL)animated{
    _UIiAD.delegate = nil;
    _UIiAD = nil;
    [_UIiAD removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    //NSLog(@"ads loaded")
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    //[_UIiAD setAlpha:1];
    _UIiAD.hidden = NO;
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ads not loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _UIiAD.hidden = YES;
    //[_UIiAD setAlpha:1];
    //[_UIiAD setBackgroundColor:[UIColor clearColor]];
    [UIView commitAnimations];
}


@synthesize CarMakeLabel, CarModelLabel, CarYearsMadeLabel, CarPriceLabel, CarEngineLabel, CarTransmissionLabel, CarDriveTypeLabel, CarHorsepowerLabel, CarZeroToSixtyLabel, CarTopSpeedLabel, CarWeightLabel, CarFuelEconomyLabel, firstCar, secondCar, CarTitleLabel, CarDriveTypeLabel2, CarEngineLabel2, CarFuelEconomyLabel2, CarHorsepowerLabel2, CarMakeLabel2, CarModelLabel2, CarPriceLabel2, CarTitleLabel2, CarTopSpeedLabel2, CarTransmissionLabel2, CarWeightLabel2, CarYearsMadeLabel2, CarZeroToSixtyLabel2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];
    
    firstimageview.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:firstCar.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    secondimageview.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:secondCar.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    
    
    NSString * makewithspace = [firstCar.CarMake stringByAppendingString:@" "];
    NSString * detailtitle = [makewithspace stringByAppendingString:firstCar.CarModel];
    NSString * makewithspace2 = [secondCar.CarMake stringByAppendingString:@" "];
    NSString * detailtitle2 = [makewithspace2 stringByAppendingString:secondCar.CarModel];
    
    FavoritesClass *favoriteclass = [[FavoritesClass alloc]init];
    
    NSLog(@"FavoriteClassCar%@",favoriteclass.favoritearray);
    
    self.title = @"Model Comparison";
    CarTitleLabel.text = detailtitle;
    CarTitleLabel2.text = detailtitle2;
    

    // Do any additional setup after loading the view.
    
    //Load up the UI
    [self setLabels];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Methods

- (void)getfirstModel:(id)firstcarObject;
{
    firstCar = firstcarObject;
}
- (void)getsecondModel:(id)secondcarObject;
{
    secondCar = secondcarObject;
}

- (void)setLabels
{
    CarMakeLabel.text = firstCar.CarMake;
    CarModelLabel.text = firstCar.CarModel;
    CarYearsMadeLabel.text = firstCar.CarYearsMade;
    CarPriceLabel.text = firstCar.CarPrice;
    CarEngineLabel.text = firstCar.CarEngine;
    CarTransmissionLabel.text= firstCar.CarTransmission;
    CarDriveTypeLabel.text = firstCar.CarDriveType;
    CarHorsepowerLabel.text = firstCar.CarHorsepower;
    CarZeroToSixtyLabel.text = firstCar.CarZeroToSixty;
    CarTopSpeedLabel.text = firstCar.CarTopSpeed;
    CarWeightLabel.text = firstCar.CarWeight;
    CarFuelEconomyLabel.text = firstCar.CarFuelEconomy;
    
    CarMakeLabel2.text = secondCar.CarMake;
    CarModelLabel2.text = secondCar.CarModel;
    CarYearsMadeLabel2.text = secondCar.CarYearsMade;
    CarPriceLabel2.text = secondCar.CarPrice;
    CarEngineLabel2.text = secondCar.CarEngine;
    CarTransmissionLabel2.text= secondCar.CarTransmission;
    CarDriveTypeLabel2.text = secondCar.CarDriveType;
    CarHorsepowerLabel2.text = secondCar.CarHorsepower;
    CarZeroToSixtyLabel2.text = secondCar.CarZeroToSixty;
    CarTopSpeedLabel2.text = secondCar.CarTopSpeed;
    CarWeightLabel2.text = secondCar.CarWeight;
    CarFuelEconomyLabel2.text = secondCar.CarFuelEconomy;
    
    NSLog(@"%@", firstCar);
}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     if ([[segue identifier] isEqualToString:@"pushMakesView"])
     {
         //Get the object for the selected row
         Model * firstcarobject1 = firstCar;
         [[segue destinationViewController] getfirstModel:firstcarobject1];
 }
     if ([[segue identifier] isEqualToString:@"pushMakesView2"])
     {
         Model * secondcarobject1 = secondCar;
         [[segue destinationViewController] getsecondModel:secondcarobject1];
     }
     if ([[segue identifier] isEqualToString:@"compareimage1"])
     {
         //Get the object for the selected row
         Model * firstcarobject1 = firstCar;
         [[segue destinationViewController] getfirstModel:firstcarobject1];
     }
     if ([[segue identifier] isEqualToString:@"compareimage2"])
     {
         //Get the object for the selected row
         Model * secondcarobject1 = secondCar;
         [[segue destinationViewController] getsecondModel:secondcarobject1];
     }

 }


@end
