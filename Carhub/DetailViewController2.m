//
//  DetailViewController2.m
//  Carhub
//
//  Created by Christopher Clark on 7/26/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "DetailViewController2.h"
#import "BackgroundLayer.h"
#import "CompareViewController.h"
#import "AppDelegate.h"

@interface DetailViewController2 ()

@end

@implementation DetailViewController2

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    _UIiAD = [[self appdelegate]UIiAD];
    _UIiAD.delegate = self;
    [_UIiAD setFrame:CGRectMake(0,430,320,50)];
    [self.view addSubview:_UIiAD];
}

-(void) viewWillDisappear:(BOOL)animated{
    _UIiAD.delegate = nil;
    _UIiAD = nil;
    [_UIiAD removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [_UIiAD setAlpha:1];
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [_UIiAD setAlpha:1];
    [UIView commitAnimations];
}

@synthesize CarMakeLabel, CarModelLabel, CarYearsMadeLabel, CarPriceLabel, CarEngineLabel, CarTransmissionLabel, CarDriveTypeLabel, CarHorsepowerLabel, CarZeroToSixtyLabel, CarTopSpeedLabel, CarWeightLabel, CarFuelEconomyLabel;

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
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 650)];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];
    
    imageview.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:_currentCar.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    
    
    NSString * makewithspace = [_currentCar.CarMake stringByAppendingString:@" "];
    NSString * detailtitle = [makewithspace stringByAppendingString:_currentCar.CarModel];
    self.title = detailtitle;
    
    NSLog(@"%@", _firstCar3);
    NSLog(@"%@", _currentCar);
    
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

- (void)getModel:(id)modelObject;
{
    _currentCar = modelObject;
}

- (void)getfirstModel:(id)firstcarObject3;
{
    _firstCar3 = firstcarObject3;
}

- (void)setLabels
{
    CarMakeLabel.text = _currentCar.CarMake;
    CarModelLabel.text = _currentCar.CarModel;
    CarYearsMadeLabel.text = _currentCar.CarYearsMade;
    CarPriceLabel.text = _currentCar.CarPrice;
    CarEngineLabel.text = _currentCar.CarEngine;
    CarTransmissionLabel.text= _currentCar.CarTransmission;
    CarDriveTypeLabel.text = _currentCar.CarDriveType;
    CarHorsepowerLabel.text = _currentCar.CarHorsepower;
    CarZeroToSixtyLabel.text = _currentCar.CarZeroToSixty;
    CarTopSpeedLabel.text = _currentCar.CarTopSpeed;
    CarWeightLabel.text = _currentCar.CarWeight;
    CarFuelEconomyLabel.text = _currentCar.CarFuelEconomy;
    
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"pushCompareView"])
    {
        //Get the object for the selected row
        Model * firstcarobject = _currentCar;
        [[segue destinationViewController] getfirstModel:firstcarobject];
    }
    if ([[segue identifier] isEqualToString:@"pushCompareView2"])
    {
        //Get the object
        Model * secondcarobject = _currentCar;
        [[segue destinationViewController] getsecondModel:secondcarobject];
        Model * firstcarobject = _firstCar3;
        [[segue destinationViewController] getfirstModel:firstcarobject];
    }
    
}

#pragma mark iAd Delegate Methods


@end