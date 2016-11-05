//
//  News.m
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/23/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import "News.h"

@implementation News

@synthesize Id = _Id;
@synthesize Title = _Title;
@synthesize Desc = _Desc;
@synthesize urlThumb = _urlThumb;
@synthesize urlNews = _urlNews;

-(id)init{
    self.Id = @"";
    self.Title = @"";
    self.Desc = @"";
    self.urlThumb = @"";
    self.urlNews = @"";
    return self;
}

@end
