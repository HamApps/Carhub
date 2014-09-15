//
//  UpgradeViewController.m
//  Carhub
//
//  Created by Christopher Clark on 9/14/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "UpgradeViewController.h"

@interface UpgradeViewController ()

@end

@implementation UpgradeViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)PurchaseItem:(id)sender {
    _purchaseController = [[PurchasedViewController alloc] initWithNibName:nil bundle:nil];
    
    _purchaseController.productid = @"AutohubPro";
    
    [self presentViewController:_purchaseController animated:YES completion:NULL];
    
    [_purchaseController getProductid:self];
}

-(void)Purchased{
    testLabel.text = @"Item has been purchased";    
}
@end
