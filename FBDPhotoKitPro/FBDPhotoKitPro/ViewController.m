//
//  ViewController.m
//  FBDPhotoKitPro
//
//  Created by feng on 2017/1/9.
//  Copyright © 2017年 冯宝东. All rights reserved.
//

#import "ViewController.h"
#import "FBDPhotoNavViewController.h"
#import "FBDPhotoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton* presentButton=[UIButton buttonWithType:UIButtonTypeSystem];
    [presentButton setFrame:CGRectMake(20, 300, 100, 40)];
    [presentButton setTitle:@"弹出" forState:UIControlStateNormal];
    [presentButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(presentButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
    
}
#pragma mark-  弹出按钮事件
-(void)presentButtonPressed
{

    FBDPhotoViewController* photoVC=[[FBDPhotoViewController alloc]init];
    FBDPhotoNavViewController* photoNavVC=[[FBDPhotoNavViewController alloc]initWithRootViewController:photoVC];
    [self presentViewController:photoNavVC animated:YES completion:nil];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
