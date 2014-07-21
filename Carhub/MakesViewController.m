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
    [scroller setContentSize:CGSizeMake(320, 2400)];
    
    AlfaRomeoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=2"]]];
    AcuraImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ArashImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=78"]]];
    ArielImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=99"]]];
    AstonMartinImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=3"]]];
    AudiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=9"]]];
    BACImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=102"]]];
    BentleyImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=12"]]];
    BMWImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    BugattiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    BuickImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    CadillacImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    CaparoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    CaterhamImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ChevroletImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ChryslerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    CitroenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    CorvetteImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    DaciaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    DeLoreanImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    DodgeImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    FerrariImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    FiatImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    FiskerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    FordImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    GMCImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    GumpertImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    HennesseyImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    HondaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    HummerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    HyundaiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    InfinitiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    JaguarImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    JeepImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    KiaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    KoenigseggImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    LamborghiniImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    LandRoverImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    LexusImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    LincolnImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    LotusImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MaseratiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MaybachImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MazdaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    McLarenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MercedesBenzImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MiniImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    MitsubishiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    NissanImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    PaganiImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    PeugeotImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    PorscheImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    RAMImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    RenaultImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    RollsRoyceImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ScionImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    SpykerImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    SRTImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    SSCImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    SubaruImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    TeslaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    ToyotaImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    VauxhallImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    VolkswagenImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    VolvoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=1"]]];
    
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
