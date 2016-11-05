//
//  News.h
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/23/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject


@property (nonatomic, strong) NSString *Id;
@property (nonatomic, strong) NSString *Title;
@property (nonatomic, strong) NSString *Desc;
@property (nonatomic, strong) NSString *urlThumb;
@property (nonatomic, strong) NSString *urlNews;

-(id) init;
@end
