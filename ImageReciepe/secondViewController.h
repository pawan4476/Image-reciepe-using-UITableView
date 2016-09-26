//
//  secondViewController.h
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController{
    NSString *str;
}
@property (strong, nonatomic) IBOutlet UITextView *txt;
@property (strong, nonatomic) IBOutlet UIImageView *detailImage;
@property (strong, nonatomic) NSString *nameHero;
@property (strong, nonatomic) NSString *movieHit;
@property (strong, nonatomic) NSString *heroineName;
@property (strong, nonatomic) NSString *directorName;
@property (strong, nonatomic) NSString *musicDirectorName;
@property (strong, nonatomic) NSString *img1;
//-(void)getDetails : (NSString*)str1 : (NSString *)str2;
@end
