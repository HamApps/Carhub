//
//  MakesViewController.m
//  Carhub
//
//  Created by Christopher Clark on 7/20/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "MakesViewController.h"

@interface MakesViewController ()

@end

@implementation MakesViewController

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
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 2560)];
    self.title = @"Makes";
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Grey Gradient"]];
                                 
    AlfaRomeoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=2"]]];
    AcuraImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ArashImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=78"]]];
    ArielImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=99"]]];
    AstonMartinImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=3"]]];
    AudiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=9"]]];
    BACImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=102"]]];
    BentleyImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=12"]]];
    BMWImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=41"]]];
    BugattiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=42"]]];
    BuickImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=89"]]];
    CadillacImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=90"]]];
    CaparoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=100"]]];
    CaterhamImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=84"]]];
    ChevroletImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=46"]]];
    ChryslerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=94"]]];
    CitroenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=48"]]];
    CorvetteImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=18"]]];
    DaciaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=79"]]];
    DeLoreanImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=80"]]];
    DodgeImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=49"]]];
    FerrariImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=50"]]];
    FiatImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=19"]]];
    FiskerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=51"]]];
    FordImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=52"]]];
    GMCImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=95"]]];
    GumpertImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=54"]]];
    HennesseyImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=83"]]];
    HondaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=96"]]];
    HummerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=85"]]];
    HyundaiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=22"]]];
    InfinitiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=56"]]];
    JaguarImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=23"]]];
    JeepImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=24"]]];
    KiaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=25"]]];
    KoenigseggImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=58"]]];
    LamborghiniImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=59"]]];
    LandRoverImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=61"]]];
    LexusImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=62"]]];
    LincolnImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=27"]]];
    LotusImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=28"]]];
    MaseratiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=63"]]];
    MaybachImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=29"]]];
    MazdaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=64"]]];
    McLarenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=98"]]];
    MercedesBenzImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=65"]]];
    MiniImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=66"]]];
    MitsubishiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=31"]]];
    NissanImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=67"]]];
    PaganiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=68"]]];
    PeugeotImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=69"]]];
    PorscheImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=87"]]];
    RAMImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=71"]]];
    RenaultImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=72"]]];
    RollsRoyceImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=35"]]];
    ScionImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=73"]]];
    SpykerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=36"]]];
    SRTImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=82"]]];
    SSCImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=101"]]];
    SubaruImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=74"]]];
    TeslaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=88"]]];
    ToyotaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=75"]]];
    VauxhallImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=76"]]];
    VolkswagenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=77"]]];
    VolvoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=39"]]];
    
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

@end
