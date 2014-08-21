//
//  ModelViewController.m
//  Carhub
//
//  Created by Christopher Clark on 8/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "ModelViewController.h"
#import "MakeViewController.h"
#import "Model.h"
#import "CarViewCell.h"

#define getDataURL @"http://pl0x.net/CarHubJSON2.php"

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface ModelViewController ()

@end

@implementation ModelViewController
@synthesize currentModel, currentMake, ModelArray, jsonArray, carArray;

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
    //Set the title of the VC: will be make name
    self.title = currentMake.MakeName;
    
    //Load Model Data
    [self retrieveData];
    
    NSLog(@"contents of jsonArray: %@", currentMake);
    NSLog(@"Car Array: %@", jsonArray);
    
    
    
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return ModelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ModelCell";
    CarViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Model * modelObject;
    modelObject = [carArray objectAtIndex:indexPath.row];
    
    cell.CarName.text = modelObject.CarModel;
    cell.CarImage.image = nil;
    //Accessory stuff
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor=[UIColor blackColor].CGColor;
    cell.CarName.layer.borderWidth=1.0f;
    cell.CarName.layer.borderColor=[UIColor whiteColor].CGColor;
    
    dispatch_async(kBgQueue, ^{
        NSData *imgData = [NSData dataWithContentsOfURL:[NSURL URLWithString:modelObject.CarImageURL relativeToURL:[NSURL URLWithString:@"http://pl0x.net/image.php"]]];
        if (imgData) {
            UIImage *image = [UIImage imageWithData:imgData];
            if (image) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    CarViewCell *updateCell = (id)[tableView cellForRowAtIndexPath:indexPath];
                    if (updateCell)
                        updateCell.CarImage.image = image;
                });
            }
        }
    });
    
    
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

#pragma mark -
#pragma mark Methods

- (void)getMake:(id)makeObject;
{
    currentMake = makeObject;
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (void) retrieveData;
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSPredicate *AcuraPredicate = [NSPredicate predicateWithFormat:@"Make CONTAINS %@", self.title];
    ModelArray = [jsonArray filteredArrayUsingPredicate:AcuraPredicate];
    
    //Set up our cities arrray
    carArray = [[NSMutableArray alloc] init];
    
    //Loop through ourjsonArray
    for (int i=0; i < ModelArray.count; i++)
    {
        //Create our city object
        NSString * cMake = [[ModelArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * cModel = [[ModelArray objectAtIndex:i] objectForKey:@"Model"];
        NSString * cYearsMade = [[ModelArray objectAtIndex:i] objectForKey:@"Years Made"];
        NSString * cPrice = [[ModelArray objectAtIndex:i] objectForKey:@"Price"];
        NSString * cEngine = [[ModelArray objectAtIndex:i] objectForKey:@"Engine"];
        NSString * cTransmission = [[ModelArray objectAtIndex:i] objectForKey:@"Transmission"];
        NSString * cDriveType = [[ModelArray objectAtIndex:i] objectForKey:@"Drive Type"];
        NSString * cHorsepower = [[ModelArray objectAtIndex:i] objectForKey:@"Horsepower"];
        NSString * cZeroToSixty = [[ModelArray objectAtIndex:i] objectForKey:@"0-60"];
        NSString * cTopSpeed = [[ModelArray objectAtIndex:i] objectForKey:@"Top Speed (mph)"];
        NSString * cWeight = [[ModelArray objectAtIndex:i] objectForKey:@"Weight (lbs)"];
        NSString * cFuelEconomy = [[ModelArray objectAtIndex:i] objectForKey:@"Fuel Economy (mpg)"];
        NSString * cURL = [[ModelArray objectAtIndex:i] objectForKey:@"Image URL"];
        
        //Add the city object to our cities array
        [carArray addObject:[[Model alloc]initWithCarMake:cMake andCarModel:cModel andCarYearsMade:cYearsMade andCarPrice:cPrice andCarEngine:cEngine andCarTransmission:cTransmission andCarDriveType:cDriveType andCarHorsepower:cHorsepower andCarZeroToSixty:cZeroToSixty andCarTopSpeed:cTopSpeed andCarWeight:cWeight andCarFuelEconomy:cFuelEconomy andCarImageURL:cURL]];
    }
}


@end
