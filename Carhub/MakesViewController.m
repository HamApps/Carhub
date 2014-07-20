//
//  MakesViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/19/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "MakesViewController.h"
#import "MakeCell.h"
#import "Make.h"
#import "Model.h"
#import <QuartzCore/QuartzCore.h>

#define getMakeDataURL @"http://pl0x.net/CarMakesJSON.php"
#define getModelDataURL @"http://pl0x.net/CarHubJSON2.php"

@interface MakesViewController ()

@end

@implementation MakesViewController
@synthesize makejsonArray, makeimageArray, modelArray, modeljsonArray;

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
    // Set a title for the view controller
    self.title = @"Makes";
    
    //Load the MakeImage Data
    [self retrieveMakeImageData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return makeimageArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MakeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MakeReuseID" forIndexPath:indexPath];
    
    Make * makeObject;
    makeObject = [makeimageArray objectAtIndex:indexPath.item];
    
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor=[UIColor blackColor].CGColor;
    cell.MakeNameLabel.text =makeObject.MakeName;
    cell.MakeImageView.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:makeObject.MakeImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image2.php"]]]];
    
    return cell;
    
}



/*
#pragma mark - Navigation - pl0x

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Get the new view controller using [seguedestinationviewcontroller]
    if ([[segue identifier] isEqualToString:@"pushModelView"])
    {
        NSIndexPath * indexPath = [self.collectionView indexPathForCell:sender];
        
        //Get the object for the selected cell
        Model * object = [modelArray objectAtIndex:indexPath.row];
        
        // Pass the selected object to the new view controller.
        [[segue destinationViewController] getModel:object];
    }
}
// Pass the selected object to the new view controller.
*/

#pragma mark -
#pragma mark Class Methods

- (void) retrieveModelData;
{
    NSURL * modelurl = [NSURL URLWithString:getModelDataURL];
    NSData * modeldata = [NSData dataWithContentsOfURL:modelurl];
    
    modeljsonArray = [NSJSONSerialization JSONObjectWithData:modeldata options:kNilOptions error:nil];
    
    NSLog(@"contents of jsonArray: %@", modeljsonArray);
    
    //Set up our cities arrray
    modelArray = [[NSMutableArray alloc] init];
    
    //Loop through ourjsonArray
    for (int i=0; i < modeljsonArray.count; i++)
    {
        //Create our city object
        NSString * cMake = [[modeljsonArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * cModel = [[modeljsonArray objectAtIndex:i] objectForKey:@"Model"];
        NSString * cYearsMade = [[modeljsonArray objectAtIndex:i] objectForKey:@"Years Made"];
        NSString * cPrice = [[modeljsonArray objectAtIndex:i] objectForKey:@"Price"];
        NSString * cEngine = [[modeljsonArray objectAtIndex:i] objectForKey:@"Engine"];
        NSString * cTransmission = [[modeljsonArray objectAtIndex:i] objectForKey:@"Transmission"];
        NSString * cDriveType = [[modeljsonArray objectAtIndex:i] objectForKey:@"Drive Type"];
        NSString * cHorsepower = [[modeljsonArray objectAtIndex:i] objectForKey:@"Horsepower"];
        NSString * cZeroToSixty = [[modeljsonArray objectAtIndex:i] objectForKey:@"0-60"];
        NSString * cTopSpeed = [[modeljsonArray objectAtIndex:i] objectForKey:@"Top Speed (mph)"];
        NSString * cWeight = [[modeljsonArray objectAtIndex:i] objectForKey:@"Weight (lbs)"];
        NSString * cFuelEconomy = [[modeljsonArray objectAtIndex:i] objectForKey:@"Fuel Economy (mpg)"];
        NSString * cURL = [[modeljsonArray objectAtIndex:i] objectForKey:@"Image URL"];
        
        
        
        
        
        //Add the city object to our cities array
        [modelArray addObject:[[Model alloc]initWithCarMake:cMake andCarModel:cModel andCarYearsMade:cYearsMade andCarPrice:cPrice andCarEngine:cEngine andCarTransmission:cTransmission andCarDriveType:cDriveType andCarHorsepower:cHorsepower andCarZeroToSixty:cZeroToSixty andCarTopSpeed:cTopSpeed andCarWeight:cWeight andCarFuelEconomy:cFuelEconomy andCarImageURL:cURL]];
    }
    
}

- (void) retrieveMakeImageData;
{
    NSURL * makeurl = [NSURL URLWithString:getMakeDataURL];
    NSData * makedata = [NSData dataWithContentsOfURL:makeurl];
    
    makejsonArray = [NSJSONSerialization JSONObjectWithData:makedata options:kNilOptions error:nil];
    
    //set up the makes array
    makeimageArray = [[NSMutableArray alloc]init];
    
    //Loop through our makejsonArray
    for (int i = 0; i < makejsonArray.count; i++)
    {
        //Create the MakeImage object
        NSString * mName = [[makejsonArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * mImageURL = [[makejsonArray objectAtIndex:i] objectForKey:@"ImageURL"];
        
        //Add the MakeImage object to the MakeImage array
        
        [makeimageArray addObject:[[Make alloc]initWithMakeName:mName andMakeImageURL:mImageURL]];
        
    }
    
    //Reload the Collection View
    [self.collectionView reloadData];
}

@end
