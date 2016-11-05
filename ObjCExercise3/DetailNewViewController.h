//
//  DetailNewViewController.h
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/24/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailNewViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString* url;

@end
