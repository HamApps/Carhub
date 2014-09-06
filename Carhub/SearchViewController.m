//
//  SearchViewController.m
//  Carhub
//
//  Created by Christopher Clark on 8/22/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "SearchViewController.h"
#import "Model.h"

#define getDataURL @"http://pl0x.net/CarHubJSON2.php"

@interface SearchViewController ()

@end

@implementation SearchViewController

@synthesize PriceData, Pricepicker, OutputLabel, enginePicker, EngineData, EngineDisData, enginedisPicker, HorsepowerData, horsepowerPicker, DriveTypeData, driveTypePicker, ZeroToSixtyData, zeroToSixtyPicker, TransmissionData, transmissionPicker, jsonArray, carArray, ModelArray;

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
    
    [self retrieveData];
    
    //Set Scroller for View
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1450)];
    
    // Do any additional setup after loading the view.
    
    //Contents of price picker
    NSArray * pricearray = [[NSArray alloc] initWithObjects:@"$5,000-",@"$5,000-10,000",@"$10,000-20,000",@"$20,000-30,000", @"$30,000-40,000", @"$40,000-50,000", @"50,000-65,000", @"$65,000-80,000", @"$80,000-100,000", @"$100,000-150,000", @"$150,000-200,000", @"$200,000-500,000", @"$500,000+",  nil];
    self.PriceData = pricearray;
    
    //Contents of engine picker
    NSArray * enginearray = [[NSArray alloc] initWithObjects:@"Electric",@"F12", @"Flat-4", @"Flat-6", @"l3", @"l4", @"l5", @"l6", @"l8", @"V6", @"V8", @"V10", @"V12", @"W12", @"W16", @"Rotary", nil];
    self.EngineData = enginearray;
    
    //Contents of engine displacement picker
    NSArray * enginedisarray = [[NSArray alloc] initWithObjects:@"meow", nil];
    self.EngineDisData = enginedisarray;
    
    //Contents of Transmission picker
    NSArray * transmissionarray = [[NSArray alloc] initWithObjects:@"4 Speed Auto", @"5 Speed Auto", nil];
    self.TransmissionData = transmissionarray;
    
    //Contents of Drive Type picker
    NSArray * drivetypearray = [[NSArray alloc] initWithObjects:@"4WD", @"AWD", @"FWD", @"RWD", nil];
    self.DriveTypeData = drivetypearray;
    
    //Contents of Horsepower picker
    NSArray * horsepowerarray = [[NSArray alloc] initWithObjects:@"0-100", @"100-200", @"200-300", @"300-400", @"400-500", @"500-600", @"600+", nil];
    self.HorsepowerData = horsepowerarray;
    
    //Contents of 0-60 picker
    NSArray * zerotosixtyarray = [[NSArray alloc] initWithObjects:@"2-3 secs", @"3-4 secs", @"4-5 secs", @"5-5.5 secs", @"5.5-6 secs", @"6-6.5 secs", @"6.5-7 secs", @"7-8 secs", @"8-9 secs", @"9-10 secs", @"10+ secs", nil];
    self.ZeroToSixtyData = zerotosixtyarray;
    
    NSLog(@"pricedata%@", jsonArray);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if([pickerView isEqual:Pricepicker])
    {
        return [PriceData count];
    }
    else if([pickerView isEqual:enginePicker])
    {
        return [EngineData count];
    }
    else if([pickerView isEqual:enginedisPicker])
    {
        return [EngineDisData count];
    }
    if([pickerView isEqual:transmissionPicker])
    {
        return [TransmissionData count];
    }

    if([pickerView isEqual:driveTypePicker])
    {
        return [DriveTypeData count];
    }

    if([pickerView isEqual:horsepowerPicker])
    {
        return [HorsepowerData count];
    }

    if([pickerView isEqual:zeroToSixtyPicker])
    {
        return [ZeroToSixtyData count];
    }


    else{
        return 0;
    }
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if([pickerView isEqual:Pricepicker])
    {
        return [PriceData objectAtIndex:row];
    }
    else if([pickerView isEqual:enginePicker])
    {
        return [EngineData objectAtIndex:row];
    }
    else if([pickerView isEqual:enginedisPicker])
    {
        return [EngineDisData objectAtIndex:row];
    }
    else if([pickerView isEqual:transmissionPicker])
    {
        return [TransmissionData objectAtIndex:row];
    }

    else if([pickerView isEqual:driveTypePicker])
    {
        return [DriveTypeData objectAtIndex:row];
    }

    else if([pickerView isEqual:horsepowerPicker])
    {
        return [HorsepowerData objectAtIndex:row];
    }

    else if([pickerView isEqual:zeroToSixtyPicker])
    {
        return [ZeroToSixtyData objectAtIndex:row];
    }

    else{
        return 0;
    }
//return [PriceData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    //OutputLabel.text = [PriceData objectAtIndex:row];
}

- (void) retrieveData;
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    carArray = [[NSMutableArray alloc] init];
    
    //Loop through jsonarray
    for (int i=0; i < jsonArray.count; i++)
    {
        //Create our city object
        NSString * cMake = [[jsonArray objectAtIndex:i] objectForKey:@"Make"];
        NSString * cModel = [[jsonArray objectAtIndex:i] objectForKey:@"Model"];
        NSString * cYearsMade = [[jsonArray objectAtIndex:i] objectForKey:@"Years Made"];
        NSString * cPrice = [[jsonArray objectAtIndex:i] objectForKey:@"Price"];
        NSString * cEngine = [[jsonArray objectAtIndex:i] objectForKey:@"Engine"];
        NSString * cTransmission = [[jsonArray objectAtIndex:i] objectForKey:@"Transmission"];
        NSString * cDriveType = [[jsonArray objectAtIndex:i] objectForKey:@"Drive Type"];
        NSString * cHorsepower = [[jsonArray objectAtIndex:i] objectForKey:@"Horsepower"];
        NSString * cZeroToSixty = [[jsonArray objectAtIndex:i] objectForKey:@"0-60"];
        NSString * cTopSpeed = [[jsonArray objectAtIndex:i] objectForKey:@"Top Speed (mph)"];
        NSString * cWeight = [[jsonArray objectAtIndex:i] objectForKey:@"Weight (lbs)"];
        NSString * cFuelEconomy = [[jsonArray objectAtIndex:i] objectForKey:@"Fuel Economy (mpg)"];
        NSString * cURL = [[jsonArray objectAtIndex:i] objectForKey:@"Image URL"];
        
        //Add the city object to our cities array
        [carArray addObject:[[Model alloc]initWithCarMake:cMake andCarModel:cModel andCarYearsMade:cYearsMade andCarPrice:cPrice andCarEngine:cEngine andCarTransmission:cTransmission andCarDriveType:cDriveType andCarHorsepower:cHorsepower andCarZeroToSixty:cZeroToSixty andCarTopSpeed:cTopSpeed andCarWeight:cWeight andCarFuelEconomy:cFuelEconomy andCarImageURL:cURL]];
    }
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

@end
