//
//  NewHomeTableViewCell.h
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/21/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewHomeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgThumb;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;

-(void) SetInfoForCell:(NSString*)title description:(NSString*)desc stringOfThumb:(NSString*)urlThumb;

@end
