//
//  ViewController.m
//  GQPopopDemo
//
//  Created by Guangquan Yu on 2018/9/12.
//  Copyright © 2018年 ZHM.YU. All rights reserved.
//

#import "ViewController.h"
#import "UIView+GQPopop.h"
#import "NSObject+GQPopop.h"
#import "UIViewController+ID.h"
@interface ViewController ()
@property(nonatomic) UIButton * mybutton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int i=0; i<4; i++) {
        UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(50, 60+50*i, 100, 40)];
        
        button.tag = 100 + i;
        [button setTitleColor:[UIColor redColor] forState:0];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:64];
        [self.view addSubview:button];
        if (i == 0) {
            [button setTitle:@"旋转弹窗" forState:0];

        } else if (i==1) {
            [button setTitle:@"视图下弹窗" forState:0];
            _mybutton = button;
        } else if (i==2) {
            [button setTitle:@"相册提示" forState:0];

        } else if (i==3) {
            [button setTitle:@"列表弹窗" forState:0];
            
        }
    }
    
}

- (void)buttonAction:(UIButton *)button{
    NSInteger tag = button.tag-100;
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(30, 0, 200, 200)];
    view.backgroundColor = [UIColor orangeColor];
    view.userInteractionEnabled = YES;
    if (tag == 0) {
        [view displayCenterRotating];
    } else if (tag == 1){
        [view displayViewBottomToEdge:_mybutton isDecorateDelegate:NO];
    } else if (tag == 2){
        [self displayPhotoAlbum];
    } else if (tag == 3){
        [self displayViewBottomWithArray:@[@"✋",@"☺",@"🈚️",@"👎"] view:button];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
