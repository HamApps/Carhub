//
//  MakesViewController2.m
//  Carhub
//
//  Created by Christopher Clark on 7/25/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "MakesViewController2.h"
#import "AppDelegate.h"

@interface MakesViewController2 ()

@end

@implementation MakesViewController2

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    _UIiAD = [[self appdelegate]UIiAD];
    _UIiAD.delegate = self;
    [_UIiAD setFrame:CGRectMake(0,518,320,50)];
    [self.view addSubview:_UIiAD];
}

-(void) viewWillDisappear:(BOOL)animated{
    _UIiAD.delegate = nil;
    _UIiAD = nil;
    [_UIiAD removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    //NSLog(@"ads loaded")
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    //[_UIiAD setAlpha:1];
    _UIiAD.hidden = NO;
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ads not loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _UIiAD.hidden = YES;
    //[_UIiAD setAlpha:1];
    //[_UIiAD setBackgroundColor:[UIColor clearColor]];
    [UIView commitAnimations];
    
    
}


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
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];
    
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
    ZenvoImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pl0x.net/image2.php?carno=103"]]];
    NSLog(@"%@", _firstCar1);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getfirstModel:(id)firstcarObject1;
{
    _firstCar1 = firstcarObject1;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"acuraseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"alfaromeoseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"arashseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"arielseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"astonmartinseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"audiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"bacseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"bentleyseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"bmwseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"bugattiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"buickseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"cadillacseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"caparoseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"caterhamseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"chevroletseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"chryslerseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"citroenseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"corvetteseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"daciaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"deloreanseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"dodgeseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"ferrariseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"fiatseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"fiskerseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"fordseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"gmcseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"gumpertseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"hennesseyseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"hondaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"hummerseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"hyundaiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"alfaromeoseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"infinitiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"jaguarseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"jeepseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"kiaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"koenigseggseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"lamborghiniseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"landroverseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"lexusseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"lincolnseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"lotusseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"maseratiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"maybachseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"mazdaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"mclarenseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"mercedesseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"miniseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"mitsubishiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"nissanseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"paganiseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"peugeotseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"porscheseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"ramseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"renaultseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"rollsroyceseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"scionseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"spykerseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"srtseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"sscseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"subaruseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"teslaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"toyotaseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"volkswagenseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"volvoseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    if ([[segue identifier] isEqualToString:@"zenvoseg"])
    {
        //Get the object for the selected row
        Model * firstcarobject2 = _firstCar1;
        [[segue destinationViewController] getfirstModel:firstcarobject2];
    }
    
    
}


@end
