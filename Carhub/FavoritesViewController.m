//
//  FavoritesViewController.m
//  Carhub
//
//  Created by Christopher Clark on 8/23/14.
//  Copyright (c) 2014 Ham Applications. All rights reserved.
//

#import "FavoritesViewController.h"
#import "DetailViewController.h"
#import "CarViewCell.h"
#import "Model.h"
#import "AppDelegate.h"
#import "FavoritesClass.h"
#import "Model.h"

#define kNSUSERDEFAULTSCAR @"nsuserdefaultscar"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

@synthesize FavoriteCar, favoritesarray, savedarray;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSLog (@"favoritecar%@", [defaults objectForKey:kNSUSERDEFAULTSCAR]);
    Model *favorite = [[Model alloc]init];
    favorite = [self readFavoriteObjectWithKey:kNSUSERDEFAULTSCAR];
    self.title = favorite.CarModel;
    
    NSLog (@"defaultsarray: %@", [defaults objectForKey:@"favoritesarray"]);
    NSLog (@"favoritesarraycount: %lu", (unsigned long)favoritesarray.count);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    static NSString *CellIdentifier = @"FavoritesCell";
    [self.tableView registerClass:[CarViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    favoritesarray = [[NSMutableArray alloc]init];
    NSLog (@"favoritecar%@", FavoriteCar);
    [self loadcars];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSLog (@"favoritecar%@", [defaults objectForKey:@"savedcar"]);
    
    Model *favorite = [[Model alloc]init];
    favorite = [self readFavoriteObjectWithKey:kNSUSERDEFAULTSCAR];
    NSLog(@"favorite%@", favorite);
    
    favoritesarray = [[NSMutableArray alloc]init];
    [favoritesarray addObject:favorite];
    NSLog(@"favoritesarray%@", favoritesarray);

    
}

- (Model *)readFavoriteObjectWithKey:(NSString *)key
{
    NSData *favoriteobject = [[NSUserDefaults standardUserDefaults]objectForKey:key];
    Model *favorite = [NSKeyedUnarchiver unarchiveObjectWithData:favoriteobject];
    return favorite;
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
    return favoritesarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Model *favorite = [[Model alloc]init];
    favorite = [self readFavoriteObjectWithKey:kNSUSERDEFAULTSCAR];
    
    favoritesarray = [[NSMutableArray alloc]init];
    [favoritesarray addObject:favorite];
    
    static NSString *CellIdentifier = @"FavoritesCell";
    CarViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.CarImage.image = nil;
    cell.CarName.text = favorite.CarModel;
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor=[UIColor blackColor].CGColor;
    cell.CarName.layer.borderWidth=1.0f;
    cell.CarName.layer.borderColor=[UIColor whiteColor].CGColor;
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"Metal Background.jpg"]];
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Metal Background.jpg"]];
    
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

- (void)getfirstModel:(id)firstcarObject;
{
    FavoriteCar = firstcarObject;
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:savedarray forKey:@"savedarray"];
}

-(id)initWithCoder:(NSCoder *)decoder
{
    self.savedarray = [decoder decodeObjectForKey:@"savedarray"];
    return self;
}

-(void)loadcars;
{
    //[favoritesarray addObject:FavoriteCar];
    NSLog (@"favoritesarray%@", favoritesarray);
    NSArray *savedarray2 = [[NSArray alloc]initWithArray:favoritesarray];
    NSLog (@"savedarray2%@", savedarray2);
    NSLog (@"savedarray%@", favoritesarray);
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSData *savedarraydata = [NSKeyedArchiver archivedDataWithRootObject:savedarray];
    [userDefaults setObject:savedarraydata forKey:@"savedfavoritecar"];
    [userDefaults synchronize];
    
    
    
    //FavoritesViewController *favorites = [[FavoritesViewController alloc]init];
    //favorites.favoritesarray = [[NSMutableArray alloc]init];
    //[favorites.favoritesarray addObject:_currentCararray];
    //NSLog(@"Favoritesarray%@", favorites.favoritesarray);

}
- (void)addItemViewController:(DetailViewController *)controller didFinishEnteringItem:(Model *)currentcar
{
    NSLog(@"addedcar%@",currentcar);
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
