//
//  ViewController.m
//  ObjCExercise3
//
//  Created by Tran Trung Tuyen on 10/21/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import "ViewController.h"
#import "NewHomeTableViewCell.h"
#import "AFNetworking.h"
#import "News.h"
#import "DetailNewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/// Event of ViewController
///
///

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([NewHomeTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([NewHomeTableViewCell class])];
    [self GetHomeNews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.HomeNews.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([NewHomeTableViewCell class]) forIndexPath:indexPath];
    News *new = [[News alloc] init];
    if(self.HomeNews.count != 0)
    {
        new = [self.HomeNews objectAtIndex:indexPath.row];
    }
    [cell SetInfoForCell:new.Title description:new.Desc stringOfThumb:new.urlThumb];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"ShowDetailNew" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"ShowDetailNew"]){
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        DetailNewViewController *detailNewController = segue.destinationViewController;
        News *new = [self.HomeNews objectAtIndex:indexPath.row];
        detailNewController.url = [NSString stringWithFormat:@"%@?view=app",new.urlNews];
    }
}

/// Data Handle of ViewController
///
///

-(void)GetHomeNews{
    
    NSString *urlString = @"http://api3.vnexpress.net/api/group?api%5B%5D=article%3Ftype%3Dget_topstory%26showed_area%3Dtrangchu_mobile%26cate_id%3D1000000%26limit%3D35&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003450%26limit%3D1%26option%3Dobject&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001005%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001002%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003159%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1002691%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1002565%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001007%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003497%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003750%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1002966%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003231%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001009%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1002592%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001006%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001012%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001014%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1003834%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_rule_2%26cate_id%3D1001011%26limit%3D15&api%5B%5D=article%3Ftype%3Dget_top_cate%26cate_id%3D1001014%26limit%3D5%26top_type%3Dview&api%5B%5D=article%3Ftype%3Dget_top_cate%26cate_id%3D1002966%26limit%3D5%26top_type%3Dcomment&app_id=9e304d";
    //NSString *urlString = @"https://jsonplaceholder.typicode.com/posts/1";
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    [request setValue:@"W/\"vufKNyxwGL+piJqwz1PMZw==\"" forHTTPHeaderField:@"If-None-Match"];
    [request setValue:@"*/*" forHTTPHeaderField:@"Accept"];
    [request setValue:@"VnExpress/7.0.1 (iPhone; iOS 10.0.2; Scale/2.00)" forHTTPHeaderField:@"User-Agent"];
    [request setValue:@"en-VN;q=1, vi-VN;q=0.9" forHTTPHeaderField:@"Accept-Language"];
    [request setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    [request setValue:@"keep-alive" forHTTPHeaderField:@"Connection"];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]
                                         initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        //NSString *responseString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        //NSLog(@"%@", responseString);
        NSError *jsonError = nil;
        NSDictionary* jsonObject = [NSJSONSerialization JSONObjectWithData:(NSData *)responseObject options:kNilOptions error:&jsonError];
        NSArray* jsonNews = [[[jsonObject objectForKey:@"data"] objectForKey:@"0"] objectForKey:@"trangchu_mobile"];
        self.HomeNews = [[NSMutableArray alloc] init];
        [self SetViewData:jsonNews];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"%s: AFHTTPRequestOperation error: %@", __FUNCTION__, error);
    }];
    //[operation waitUntilFinished];
    [operation start];
}

-(void)SetViewData:(NSArray*)_jsonNews{
    if(_jsonNews != nil){
        for(NSDictionary* jsonNew in _jsonNews)
        {
            News* new = [[News alloc] init];
            new.Title = [jsonNew valueForKey:@"title"];
            new.Desc = [jsonNew valueForKey:@"lead"];
            new.urlThumb = [jsonNew valueForKey:@"thumbnail_url"];
            new.urlNews = [jsonNew valueForKey:@"share_url"];
            [self.HomeNews addObject:new];
        }
    }
    else{
        
    }
    [self.tableView reloadData];
}


@end
