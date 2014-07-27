//
//  TopTensViewController2.m
//  Carhub
//
//  Created by Christopher Clark on 7/26/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "TopTensViewController2.h"
#import "AppDelegate.h"

@interface TopTensViewController2 ()

@end

@implementation TopTensViewController2

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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    _UliAD
    = [[self appdelegate]UIiAD];
    _UliAD.delegate = self;
    [_UliAD setFrame:CGRectMake(0,430,320,50)];
    [self.view addSubview:_UliAD];
}

-(void) viewWillDisappear:(BOOL)animated{
    _UliAD.delegate = nil;
    _UliAD = nil;
    [_UliAD removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    //NSLog(@"ads loaded")
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    //[_UIiAD setAlpha:1];
    _UliAD.hidden = NO;
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ads not loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _UliAD.hidden = YES;
    //[_UIiAD setAlpha:1];
    //[_UIiAD setBackgroundColor:[UIColor clearColor]];
    [UIView commitAnimations];

}


@end





