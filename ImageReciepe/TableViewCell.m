//
//  TableViewCell.m
//  ImageReciepe
//
//  Created by Nagam Pawan on 9/14/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
   

    // Configure the view for the selected state
}
-(void)layoutSubviews{
    [super layoutSubviews];
    _imageOfRecepies.layer.cornerRadius = _imageOfRecepies.frame.size.height * 0.5;
}
@end
