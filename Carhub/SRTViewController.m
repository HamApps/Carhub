//
//  SRTViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/21/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "SRTViewController.h"
#import "Model.h"
#import "MakesViewController.h"
#import "DetailViewController.h"
#import "CarViewCell.h"
#import <QuartzCore/QuartzCore.h>
#import "BackgroundLayer.h"

#define getDataURL @"http://pl0x.net/CarHubJSON2.php"

@interface SRTViewController ()

@end

@implementation SRTViewController
@synthesize jsonArray, carArray, modelArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set the title of our VC
    self.title = @"SRT";
    
    //Load Data
    [self retrieveData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return carArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SRTCell";
    CarViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    Model * modelObject;
    modelObject = [carArray objectAtIndex:indexPath.row];
    
    cell.CarName.text = modelObject.CarModel;
    cell.CarImage.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:modelObject.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    //Accessory
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Metal Background.jpg"]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor=[UIColor blackColor].CGColor;
    cell.CarName.layer.borderWidth=1.0f;
    cell.CarName.layer.borderColor=[UIColor whiteColor].CGColor;
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"pushd"])
    {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        
        //Get the object for the selected row
        Model * object = [carArray objectAtIndex:indexPath.row];
        Model * firstcarobject3 = _firstCar2;
        [[segue destinationViewController] getfirstModel:firstcarobject3];
        [[segue destinationViewController] getModel:object];
    }
    
}

- (void)getfirstModel:(id)firstcarObject2;
{
    _firstCar2 = firstcarObject2;
}

- (void) retrieveData;
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSPredicate *AlfaRomeoPredicate = [NSPredicate predicateWithFormat:@"Make = 'SRT'"];
    modelArray = [jsonArray filteredArrayUsingPredicate:AlfaRomeoPredicate];
    
    NSLog(@"%@,", modelArray);
    
    //Set up our cities arrray
    carArray = [[NSMutableArray alloc] init];
    
    //Loop through ourjsonArray
    for (int i=0; i < modelArray.count; i++)
    {
        //Create our city object
        NSString * cMake = [[modelArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * cModel = [[modelArray objectAtIndex:i] objectForKey:@"Model"];
        NSString * cYearsMade = [[modelArray objectAtIndex:i] objectForKey:@"Years Made"];
        NSString * cPrice = [[modelArray objectAtIndex:i] objectForKey:@"Price"];
        NSString * cEngine = [[modelArray objectAtIndex:i] objectForKey:@"Engine"];
        NSString * cTransmission = [[modelArray objectAtIndex:i] objectForKey:@"Transmission"];
        NSString * cDriveType = [[modelArray objectAtIndex:i] objectForKey:@"Drive Type"];
        NSString * cHorsepower = [[modelArray objectAtIndex:i] objectForKey:@"Horsepower"];
        NSString * cZeroToSixty = [[modelArray objectAtIndex:i] objectForKey:@"0-60"];
        NSString * cTopSpeed = [[modelArray objectAtIndex:i] objectForKey:@"Top Speed (mph)"];
        NSString * cWeight = [[modelArray objectAtIndex:i] objectForKey:@"Weight (lbs)"];
        NSString * cFuelEconomy = [[modelArray objectAtIndex:i] objectForKey:@"Fuel Economy (mpg)"];
        NSString * cURL = [[modelArray objectAtIndex:i] objectForKey:@"Image URL"];
        
        
        //Add the city object to our cities array
        [carArray addObject:[[Model alloc]initWithCarMake:cMake andCarModel:cModel andCarYearsMade:cYearsMade andCarPrice:cPrice andCarEngine:cEngine andCarTransmission:cTransmission andCarDriveType:cDriveType andCarHorsepower:cHorsepower andCarZeroToSixty:cZeroToSixty andCarTopSpeed:cTopSpeed andCarWeight:cWeight andCarFuelEconomy:cFuelEconomy andCarImageURL:cURL]];
    }
}

@end
