//
//  secondViewController.m
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
//    str = @"this what i said";
//    _txt.text = str;
    [super viewDidLoad];
    //self.navigationController.navigationBar.topItem.title = @"Back";
    NSMutableString* text = [[NSMutableString alloc]init];
    [text appendString:_nameHero];
    [text appendString:@"\n"];
    [text appendString:_movieHit];
    [text appendString:@"\n"];
    [text appendString:_heroineName];
    [text appendString:@"\n"];
    [text appendString:_directorName];
    [text appendString:@"\n"];
    [text appendString:_musicDirectorName];
    _detailImage.image = [UIImage imageNamed:_img1];
    
    _txt.text = text;
    

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
