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

@synthesize PriceData, Pricepicker, OutputLabel, enginePicker, EngineData, EngineDisData, enginedisPicker, HorsepowerData, horsepowerPicker, DriveTypeData, driveTypePicker, ZeroToSixtyData, zeroToSixtyPicker, TransmissionData, transmissionPicker, jsonArray, carArray, ModelArray, DriveTypeArray1, PriceArray1, EngineArray1, EngineDisArray1, HorsepowerArray1, ZerotoSixtyArray1, TransmissionArray1;

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
    NSArray * pricearray = [[NSArray alloc] initWithObjects:@"Select a Price", @"Any", @"$0-5,000",@"$5,000-10,000",@"$10,000-20,000",@"$20,000-30,000", @"$30,000-40,000", @"$40,000-50,000", @"50,000-65,000", @"$65,000-80,000", @"$80,000-100,000", @"$100,000-150,000", @"$150,000-200,000", @"$200,000-500,000", @"$500,000+",  nil];
    self.PriceData = pricearray;
    
    //Contents of engine picker
    NSArray * enginearray = [[NSArray alloc] initWithObjects:@"Select an Engine", @"Any", @"Electric", @"F12", @"Flat-4", @"Flat-6", @"l3", @"l4", @"l5", @"l6", @"l8", @"V6", @"V8", @"V10", @"V12", @"W12", @"W16", @"Rotary", nil];
    self.EngineData = enginearray;
    
    //Contents of engine displacement picker
    NSArray * enginedisarray = [[NSArray alloc] initWithObjects:@"Select a Size", @"Any", @"0-1.0L", @"1.1-2.0L", @"2.1-3.0L", @"3.1-4.5L", @"4.6- 6.0", @"6.1-8.0L", @"8.1L+", nil];
    self.EngineDisData = enginedisarray;
    
    //Contents of Transmission picker
    NSArray * transmissionarray = [[NSArray alloc] initWithObjects:@"Select One", @"Any", @"Automatic", @"Manual", @"CVT", nil];
    self.TransmissionData = transmissionarray;
    
    //Contents of Drive Type picker
    NSArray * drivetypearray = [[NSArray alloc] initWithObjects:@"Select Drive Type", @"Any", @"4WD", @"AWD", @"FWD", @"RWD", nil];
    self.DriveTypeData = drivetypearray;
    
    //Contents of Horsepower picker
    NSArray * horsepowerarray = [[NSArray alloc] initWithObjects:@"Select One", @"Any", @"0-100", @"101-200", @"201-300", @"301-400", @"401-500", @"501-600", @"601-700", @"700+", nil];
    self.HorsepowerData = horsepowerarray;
    
    //Contents of 0-60 picker
    NSArray * zerotosixtyarray = [[NSArray alloc] initWithObjects:@"Select One", @"Any", @"2-3.0 secs", @"3.1-4.0 secs", @"4.1-5.0 secs", @"5.1-5.5 secs", @"5.6-6.0 secs", @"6.1-6.5 secs", @"6.6-7.0 secs", @"7.1-8.0 secs", @"8.1-9.0 secs", @"9.1-10.0 secs", @"10.1+ secs", nil];
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
    
    //Price Pickerview Actions Start
    if([pickerView isEqual:Pricepicker]){
        if (component == 0)
            if (row == 0){
                PriceArray1 = jsonArray;
                NSLog(@"pricedata%@", PriceArray1);
            }
            if (row == 1){
                PriceArray1 = jsonArray;
                NSLog(@"pricedata%@", PriceArray1);
            }
            if (row == 2){
                //NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"Automatic"];
                PriceArray1 = jsonArray;
                NSLog(@"pricedata%@", PriceArray1);
            }
            if (row == 3){
                //NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"Manual"];
                PriceArray1 = jsonArray;
                NSLog(@"pricedata%@", PriceArray1);
            }
            if (row == 4){
                //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
                PriceArray1 = jsonArray;
                NSLog(@"pricedata%@", PriceArray1);
            }
        if (row == 5){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 6){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 7){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 8){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 9){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 10){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 11){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 12){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 13){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
        if (row == 14){
            //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
            PriceArray1 = jsonArray;
            NSLog(@"pricedata%@", PriceArray1);
        }
    } //End Price Pickerview Actions
    
    
    //Engine Pickerview Actions Start
    if([pickerView isEqual:enginePicker]){
        if (component == 0)
            if (row == 0){
                EngineArray1 = jsonArray;
                NSLog(@"pricedata%@", EngineArray1);
            }
        if (row == 1){
            EngineArray1 = jsonArray;
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 2){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"Electric"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 3){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"F12"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 4){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"Flat-4"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 5){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"Flat-6"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 6){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"l3"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 7){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"l4"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 8){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"l5"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 9){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"l6"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 10){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"l8"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 11){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"V6"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 12){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"V8"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 13){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"V10"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 14){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"V12"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 15){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"W12"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 16){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"W16"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
        if (row == 17){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Engine CONTAINS %@", @"Rotary"];
            EngineArray1 = [PriceArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"pricedata%@", EngineArray1);
        }
    } //End Engine Pickerview Actions

    
    //Engine Dis Pickerview Actions Start
    if([pickerView isEqual:enginedisPicker]){
        if (component == 0)
            if (row == 0){
                EngineDisArray1 = EngineArray1;
                NSLog(@"pricedata%@", EngineDisArray1);
            }
        if (row == 1){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 2){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 3){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 4){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 5){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 6){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 7){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
        if (row == 8){
            EngineDisArray1 = EngineArray1;
            NSLog(@"pricedata%@", EngineDisArray1);
        }
    } //End Engine Dis Pickerview Actions


    //Transmission Pickerview Actions Start
    if([pickerView isEqual:transmissionPicker]){
        if (component == 0)
            if (row == 0){
                TransmissionArray1 = EngineDisArray1;
                NSLog(@"transmissionarray%@", TransmissionArray1);
            }
            if (row == 1){
                TransmissionArray1 = EngineDisArray1;
                NSLog(@"transmissionarray%@", TransmissionArray1);
            }
            if (row == 2){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"Automatic"];
                TransmissionArray1 = [EngineDisArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"transmissionarray%@", TransmissionArray1);
            }
            if (row == 3){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"Manual"];
                TransmissionArray1 = [EngineDisArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"transmissionarray%@", TransmissionArray1);
            }
            if (row == 4){
                NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
                TransmissionArray1 = [EngineDisArray1 filteredArrayUsingPredicate:CVTPredicate];
                NSLog(@"transmissionarray%@", TransmissionArray1);
            }
    } //End Transmission Pickerview Actions
    
    
    //Drive Type PickerView Actions Start
    if([pickerView isEqual:driveTypePicker]){
        if (component == 0)
            if (row == 0){
                DriveTypeArray1 = TransmissionArray1;
                NSLog(@"drivetypearray%@", DriveTypeArray1);
            }
            if (row == 1){
                DriveTypeArray1 = TransmissionArray1;
                NSLog(@"drivetypearray%@", DriveTypeArray1);
            }
            if (row == 2){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"'Drive Type' CONTAINS %@", @"4WD"];
                DriveTypeArray1 = [TransmissionArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"drivetypearray%@", DriveTypeArray1);
            }
            if (row == 3){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"\"Drive Type\" CONTAINS %@", @"AWD"];
                DriveTypeArray1 = [TransmissionArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"drivetypearray%@", DriveTypeArray1);
            }
            if (row == 4){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"\"Drive Type\" CONTAINS %@", @"FWD"];
                DriveTypeArray1 = [TransmissionArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"drivetypearray%@", DriveTypeArray1);
            }
            if (row == 5){
                NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"\"Drive Type\" CONTAINS %@", @"RWD"];
                DriveTypeArray1 = [TransmissionArray1 filteredArrayUsingPredicate:Predicate];
                NSLog(@"drivetypearray%@", DriveTypeArray1);
        }
    }//Drive Type PickerView Actions End
    
    //Horsepower Pickerview Actions Start
    if([pickerView isEqual:horsepowerPicker]){
        if (component == 0)
            if (row == 0){
                HorsepowerArray1 = DriveTypeArray1;
                NSLog(@"transmissionarray%@", HorsepowerArray1);
            }
        if (row == 1){
            HorsepowerArray1 = DriveTypeArray1;
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 2){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"0"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 3){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"101"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 4){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"201"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 5){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"301"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 6){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"401"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 7){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"501"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 8){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"601"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
        if (row == 9){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"Horsepower CONTAINS %@", @"701+"];
            HorsepowerArray1 = [DriveTypeArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", HorsepowerArray1);
        }
    } //End Horsepower Pickerview Actions

    //0-60 Pickerview Actions Start
    if([pickerView isEqual:zeroToSixtyPicker]){
        if (component == 0)
            if (row == 0){
                ZerotoSixtyArray1 = HorsepowerArray1;
                NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
            }
        if (row == 1){
            ZerotoSixtyArray1 = HorsepowerArray1;
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 2){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"2-3.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 3){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"3.1-4.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 4){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"4.1-5.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 5){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"5.1-5.5"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 6){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"5.6-6.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 7){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"6.1-6.5"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 8){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"6.6-7.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 9){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"7.1-8.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 10){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"8.1-9.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 11){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"9.1-10.0"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
        if (row == 12){
            NSPredicate *Predicate = [NSPredicate predicateWithFormat:@"0-60 CONTAINS %@", @"10.1+"];
            ZerotoSixtyArray1 = [HorsepowerArray1 filteredArrayUsingPredicate:Predicate];
            NSLog(@"transmissionarray%@", ZerotoSixtyArray1);
        }
    }//End 0-60 Pickerview Actions

}

- (void) retrieveData;
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    //NSPredicate *PricePredicate = [NSPredicate predicateWithFormat:@"Price CONTAINS %@", [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 5000)]];
    //NSPredicate *CVTPredicate = [NSPredicate predicateWithFormat:@"Transmission CONTAINS %@", @"CVT"];
    //ModelArray = [jsonArray filteredArrayUsingPredicate:CVTPredicate];

    
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
