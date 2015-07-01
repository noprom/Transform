//
//  ViewController.m
//  Transform
//
//  Created by noprom on 15/7/1.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;

- (IBAction)move; //平移
- (IBAction)rotate;//旋转
- (IBAction)scale;//缩放
- (IBAction)goBack;//复原

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 移动
- (IBAction)move {
//    // 1.获取原始结构体的值(基于原来的值进行修改)
//    CGAffineTransform transform = self.btnIcon.transform;
    
    // 2.修改结构体的值
//    self.btnIcon.transform = CGAffineTransformMakeTranslation(0, -50); // 不会进行叠加
    
    // 基于一个旧的值进行平移
    self.btnIcon.transform = CGAffineTransformTranslate(self.btnIcon.transform, 0, -10);

    // 3.重新赋值
    
}

// 旋转
- (IBAction)rotate {
//    self.btnIcon.transform = CGAffineTransformMakeRotation(M_PI_4); // 45度
    // 在动画里面进行
    [UIView animateWithDuration:2.5 animations:^{
        self.btnIcon.transform = CGAffineTransformMakeRotation(-M_PI_4); // 逆时针45度
        self.btnIcon.transform = CGAffineTransformTranslate(self.btnIcon.transform, 0, -10);
        self.btnIcon.transform = CGAffineTransformScale(self.btnIcon.transform, 1.5, 1.5);
    }];
    
}

// 缩放
- (IBAction)scale {
//    self.btnIcon.transform = CGAffineTransformMakeScale(1.5, 1.5); // 不基于以前的值
    
    self.btnIcon.transform = CGAffineTransformScale(self.btnIcon.transform, 1.5, 1.5);
}

// 复原
- (IBAction)goBack {
    self.btnIcon.transform = CGAffineTransformIdentity;
}
@end
