//
//  SearchViewController.h
//  Carhub
//
//  Created by Christopher Clark on 8/22/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController <UIPickerViewDelegate>{
    IBOutlet UIPickerView *Pricepicker;
    NSArray *PriceData;
    
}

@property (retain, nonatomic) IBOutlet UIPickerView *Pricepicker;
@property (retain, nonatomic) IBOutlet NSArray *PriceData;

@end
