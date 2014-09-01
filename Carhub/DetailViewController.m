//
//  DetailViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "DetailViewController.h"
#import "BackgroundLayer.h"
#import "CompareViewController.h"
#import "AppDelegate.h"
#import "FavoritesViewController.h"
#import "FavoritesClass.h"
#import "TopTensViewController.h"

#define DELEGATE ((AppDelegate*)[[UIApplication sharedApplication]delegate])

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize currentCararray, delegate;

- (AppDelegate *) appdelegate
{
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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSLog (@"usercars: %@", [defaults objectForKey:@"savedcar"]);
    
    optionsSingle = [FavoritesClass favoritecars];
    NSLog (@"favoritesclassarray%@", optionsSingle.favoritearray);
    
    
    
    
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 568)];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];    
    
    imageview.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:_currentCar.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    
    NSString * makewithspace = [_currentCar.CarMake stringByAppendingString:@" "];
    NSString * detailtitle = [makewithspace stringByAppendingString:_currentCar.CarModel];
    self.title = detailtitle;
    
    //NSLog(@"%@", _);
    if (!currentCararray){
    self.currentCararray = [[NSMutableArray alloc]init];
    [self.currentCararray addObject:_currentCar];
    }
    
    NSLog(@"currentcararray%@", currentCararray);
    
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

- (void)getsecondModel:(id)secondcarObject3;
{
    _secondCar3 = secondcarObject3;
}

- (IBAction)_sendtoFavorites {
    
    NSLog (@"currentcar%@", _currentCar);
    
    optionsSingle = [FavoritesClass favoritecars];
    NSLog (@"firstfavoritesclassarray%@", optionsSingle.favoritearray);
    
    optionsSingle.favoritearray = [[NSMutableArray alloc]init];
    
    //optionsSingle.favoritearray = [[NSMutableArray alloc]retain];
    
    [optionsSingle.favoritearray addObject:_currentCar];
    [optionsSingle.favoritearray addObjectsFromArray:currentCararray];
    NSLog (@"favoritesclassarray%@", optionsSingle.favoritearray);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.title forKey:@"savedcar"];
    [defaults synchronize];
   
    NSLog (@"usercars: %@", [defaults objectForKey:@"savedcar"]);
    
    
    
    
    
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
        Model * secondcarobject = _secondCar3;
        [[segue destinationViewController] getsecondModel:secondcarobject];
    }
    if ([[segue identifier] isEqualToString:@"pushCompareView2"])
    {
        //Get the object
        Model * secondcarobject = _currentCar;
        [[segue destinationViewController] getsecondModel:secondcarobject];
        Model * firstcarobject = _firstCar3;
        [[segue destinationViewController] getfirstModel:firstcarobject];
    }
    if ([[segue identifier] isEqualToString:@"pushimageview"])
    {
        //Get the object
        Model * firstcarobject = _currentCar;
        [[segue destinationViewController] getfirstModel:firstcarobject];
    }
    if ([[segue identifier] isEqualToString:@"pushfavorites"])
    {
        //Get the object
        Model * firstcarobject = _currentCar;
        [[segue destinationViewController] getfirstModel:firstcarobject];
    }

    
}

#pragma mark iAd Delegate Methods

@end