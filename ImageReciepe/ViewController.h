//
//  ViewController.h
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSArray *heroNames;
@property (strong, nonatomic) NSArray *heroImages;
@property (strong, nonatomic) NSArray *hitMovies;
@property (strong, nonatomic) NSArray *heroine;
@property (strong, nonatomic) NSArray *director;
@property (strong, nonatomic) NSArray *musicDirector;
@property (strong, nonatomic) NSString *titleName;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) int tableIndex;
   

@end

