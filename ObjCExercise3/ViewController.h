//
//  ViewController.h
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/21/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray* HomeNews;


-(void) GetHomeNews;

@end


