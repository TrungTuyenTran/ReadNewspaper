//
//  NewHomeTableViewCell.m
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/21/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import "NewHomeTableViewCell.h"

@implementation NewHomeTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self.lblTitle sizeToFit];
    [self.lblDesc sizeToFit];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)SetInfoForCell:(NSString *)title description:(NSString *)desc stringOfThumb:(NSString *)urlThumb{
    NSData* dataImg = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlThumb]];
    self.imgThumb.image = [UIImage imageWithData:dataImg];
    self.lblTitle.text = title;
    self.lblDesc.text = desc;
}

@end
