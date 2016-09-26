//
//  ViewController.m
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "TableViewCell.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize heroNames = _heroNames;
@synthesize heroImages = _heroImages;
@synthesize hitMovies = _hitMovies;
@synthesize heroine = _heroine;
@synthesize director = _director;
@synthesize musicDirector = _musicDirector;
@synthesize titleName = _titleName;
@synthesize tableIndex = _tableIndex;



- (void)viewDidLoad {
    self.automaticallyAdjustsScrollViewInsets = false;
    //_titleName = @"Pawan";
    //self.title = _titleName;
    [super viewDidLoad];
    self.heroNames = [[NSArray alloc]initWithObjects:@"Pawan Kalyan", @"Mahesh Babu", @"NTR", @"Prabhas", @"Allu Arjun", @"Sai Dharmatej", @"Ram Cheran", nil];
    self.hitMovies = [[NSArray alloc]initWithObjects:@"Atharinti Daredhi", @"Srimanthudu", @"Janatha Gaurage", @"Bahubali", @"Sarainodu", @"Subramanyam for sale", @"Druva", nil];
    self.heroImages = [[NSArray alloc]initWithObjects:@"attarintiki_daredi_walls.jpg", @"pf3pL4idbddhd.jpg", @"JANATHAGARAGE.jpg", @"bahubali-maa-tv-premieres-on-october-25_b_2909150516.jpg", @"Sarrainodu-Telugu_poster.jpg", @"Subramanyam_For_Sale_Telugu_Movie_Poster.jpg", @"Sarrainodu-Telugu_poster.jpg", nil];
    self.heroine = [[NSArray alloc]initWithObjects:@"Samantha", @"Shruthi Hassan", @"Nithyamenon", @"Tamanna", @"Rakulpreet Singh", @"Regina", @"Kajal", nil];
    self.director = [[NSArray alloc]initWithObjects:@"Trivikram", @"Koratala Siva", @"Koratala Siva", @"Rajamouli", @"Boyapati Srinu", @"Srinivas", @"VVVinayak", nil];
    self.musicDirector = [[NSArray alloc]initWithObjects:@"DSP", @"DSP", @"DSP", @"Keeravani", @"Thaman", @"anup", @"Thaman", nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.heroNames count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"TableViewCell";
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.lb1.text = [self.heroNames objectAtIndex:[indexPath row]];
    cell.lb2.text = [self.hitMovies objectAtIndex:[indexPath row]];
    UIImage *images =[UIImage imageNamed:[self.heroImages objectAtIndex:[indexPath row]]];
    cell.imageOfRecepies.image = images;

    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //[self performSegueWithIdentifier:@"send" sender:self];
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    secondViewController *table = [storyBoard instantiateViewControllerWithIdentifier:@"Send"];
    //UIImage *img2 = [UIImage imageNamed:[_heroImages objectAtIndex:[indexPath row]]];
    table.img1 = [_heroImages objectAtIndex:[indexPath row]];
    table.nameHero = _heroNames[indexPath.row];
    table.movieHit = _hitMovies[indexPath.row];
    table.heroineName = _heroine[indexPath.row];
    table.directorName = _director[indexPath.row];
    table.musicDirectorName = _musicDirector[indexPath.row];
    table.title = [_heroNames objectAtIndex:[indexPath row]];
    [self.navigationController pushViewController:table animated:YES];
   // self.tableIndex = indexPath.row;
    
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    NSIndexPath*path=[[self.tableView indexPathsForSelectedRows]objectAtIndex:0];
//    if ([[segue identifier]isEqualToString:@"send"]){
//        secondViewController *table = [segue destinationViewController];
//        table.img1 = [_heroImages objectAtIndex:[path row]];
//            table.nameHero = _heroNames[path.row];
//            table.movieHit = _hitMovies[path.row];
//            table.heroineName = _heroine[path.row];
//            table.directorName = _director[path.row];
//            table.musicDirectorName = _musicDirector[path.row];
//            table.title = [_heroNames objectAtIndex:[path row]];
//            [self.navigationController pushViewController:table animated:YES];
//    }
//}
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    secondViewController *vc = [segue destinationViewController];
//    
//    [vc getDetails:[self.heroNames objectAtIndex:self.tableIndex ] :<#(NSString *)#>];
//}
@end
