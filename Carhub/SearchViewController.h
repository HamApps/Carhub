//
//  SearchViewController.h
//  Carhub
//
//  Created by Christopher Clark on 8/22/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface SearchViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{
    IBOutlet UIScrollView * scroller;
    NSArray *PriceData;
}


@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * carArray;

@property (nonatomic, retain) NSArray * ModelArray;

@property (nonatomic, retain) NSArray * PriceArray1;
@property (nonatomic, retain) NSArray * EngineArray1;
@property (nonatomic, retain) NSArray * EngineDisArray1;
@property (nonatomic, retain) NSArray * TransmissionArray1;
@property (nonatomic, retain) NSArray * DriveTypeArray1;
@property (nonatomic, retain) NSArray * HorsepowerArray1;
@property (nonatomic, retain) NSArray * ZerotoSixtyArray1;

@property (weak, nonatomic) IBOutlet UIPickerView *Pricepicker;
@property (weak, nonatomic) IBOutlet UIPickerView *enginePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *enginedisPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *transmissionPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *driveTypePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *horsepowerPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *zeroToSixtyPicker;


@property (nonatomic, strong) IBOutlet UILabel * OutputLabel;
@property (retain, nonatomic) NSArray *PriceData;
@property (retain, nonatomic) NSArray *EngineData;
@property (retain, nonatomic) NSArray *EngineDisData;
@property (retain, nonatomic) NSArray *TransmissionData;
@property (retain, nonatomic) NSArray *DriveTypeData;
@property (retain, nonatomic) NSArray *HorsepowerData;
@property (retain, nonatomic) NSArray *ZeroToSixtyData;

- (void) retrieveData;

@end
