//
//  ModelViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/19/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "ModelViewController.h"
#import "Model.h"
#import "MakesViewController.h"

#define getDataURL @"http://pl0x.net/CarHubJSON2.php"

@interface ModelViewController ()

@end

@implementation ModelViewController
@synthesize jsonArray, carArray, AcuraArray;

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
    self.title = @"Models";
    
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ModelReuseID" forIndexPath:indexPath];
    
    // Configure the cell...
    Model * modelObject;
    modelObject = [carArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = modelObject.CarModel;
    cell.imageView.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:[NSURL URLWithString:modelObject.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]]];
    
    //Accessory
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
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
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"pushDetailView"])
    {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        
        //Get the object for the selected row
        Model * object = [carArray objectAtIndex:indexPath.row];
        
        [[segue destinationViewController] getCar:object];
    }
    
}
*/
- (void) retrieveData;
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSPredicate *AcuraPredicate = [NSPredicate predicateWithFormat:@"Make = 'Acura'"];
    AcuraArray = [jsonArray filteredArrayUsingPredicate:AcuraPredicate];
    
    NSLog(@"contents of Array: %@", AcuraArray);
    
    
    //Set up our cities arrray
    carArray = [[NSMutableArray alloc] init];
    
    //Loop through ourjsonArray
    for (int i=0; i < AcuraArray.count; i++)
    {
        //Create our city object
        NSString * cMake = [[AcuraArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * cModel = [[AcuraArray objectAtIndex:i] objectForKey:@"Model"];
        NSString * cYearsMade = [[AcuraArray objectAtIndex:i] objectForKey:@"Years Made"];
        NSString * cPrice = [[AcuraArray objectAtIndex:i] objectForKey:@"Price"];
        NSString * cEngine = [[AcuraArray objectAtIndex:i] objectForKey:@"Engine"];
        NSString * cTransmission = [[AcuraArray objectAtIndex:i] objectForKey:@"Transmission"];
        NSString * cDriveType = [[AcuraArray objectAtIndex:i] objectForKey:@"Drive Type"];
        NSString * cHorsepower = [[AcuraArray objectAtIndex:i] objectForKey:@"Horsepower"];
        NSString * cZeroToSixty = [[AcuraArray objectAtIndex:i] objectForKey:@"0-60"];
        NSString * cTopSpeed = [[AcuraArray objectAtIndex:i] objectForKey:@"Top Speed (mph)"];
        NSString * cWeight = [[AcuraArray objectAtIndex:i] objectForKey:@"Weight (lbs)"];
        NSString * cFuelEconomy = [[AcuraArray objectAtIndex:i] objectForKey:@"Fuel Economy (mpg)"];
        NSString * cURL = [[AcuraArray objectAtIndex:i] objectForKey:@"Image URL"];
        
        
        //Add the city object to our cities array
        [carArray addObject:[[Model alloc]initWithCarMake:cMake andCarModel:cModel andCarYearsMade:cYearsMade andCarPrice:cPrice andCarEngine:cEngine andCarTransmission:cTransmission andCarDriveType:cDriveType andCarHorsepower:cHorsepower andCarZeroToSixty:cZeroToSixty andCarTopSpeed:cTopSpeed andCarWeight:cWeight andCarFuelEconomy:cFuelEconomy andCarImageURL:cURL]];
    }
}

@end
