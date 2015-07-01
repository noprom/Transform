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
- (IBAction)move;
- (IBAction)rotate;
- (IBAction)scale;

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

- (IBAction)rotate {
}

// 缩放
- (IBAction)scale {
//    self.btnIcon.transform = CGAffineTransformMakeScale(1.5, 1.5); // 不基于以前的值
    
    self.btnIcon.transform = CGAffineTransformScale(self.btnIcon.transform, 1.5, 1.5);
}
@end
