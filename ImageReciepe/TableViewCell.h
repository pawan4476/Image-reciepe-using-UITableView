//
//  TableViewCell.h
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageOfRecepies;
@property (strong, nonatomic) IBOutlet UILabel *lb1;
@property (strong, nonatomic) IBOutlet UILabel *lb2;

@end
