//
//  ViewController.m
//  UIDemo
//
//  Created by 林涛 on 16/5/2019.
//  Copyright © 2019 狸猫工作室. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property(nonatomic,readwrite,strong) UIImageView *imageView;
@property(nonatomic,readwrite,strong) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    view1.backgroundColor = [UIColor redColor];
//    [self .view addSubview:view1];

    NSLog(@"view1 frame:%@",NSStringFromCGRect(view1.frame));
    NSLog(@"view1 bounds:%@",NSStringFromCGRect(view1.bounds));
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view2.backgroundColor = [UIColor yellowColor];
    [view1 addSubview:view2];
    NSLog(@"view2 frame:%@",NSStringFromCGRect(view2.frame));
    NSLog(@"view2 bounds:%@",NSStringFromCGRect(view2.bounds));
    
    [view1 setBounds:CGRectMake(-20, -20, 200, 200)];
    NSLog(@"--------------------------------");
    NSLog(@"view1 frame:%@",NSStringFromCGRect(view1.frame));
    NSLog(@"view1 bounds:%@",NSStringFromCGRect(view1.bounds));
    NSLog(@"view2 frame:%@",NSStringFromCGRect(view2.frame));
    NSLog(@"view2 bounds:%@",NSStringFromCGRect(view2.bounds));
    
    //场景应用
//    self.imageview = [[UIImageView alloc]initWithFrame:CGRectMake(100,0, 50, 1000)];
//    self.imageview.image = [UIImage imageNamed:@"1"];
//    self.imageview.contentMode = UIViewContentModeScaleAspectFill;
//    self.scrollview.contentSize = self.imageview.frame.size;
//    [self.scrollview addSubview:self.imageview];
//
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 0, 50, 1000)];
    self.imageView.image = [UIImage imageNamed:@"1"];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.scrollView.contentSize = self.imageView.frame.size;
    [self.scrollView addSubview:self.imageView];
    [self.view addSubview:self.scrollView];

}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"scrollview[contentoffset:%@---frame:%@------bounds:%@",NSStringFromCGPoint(scrollView.contentOffset), NSStringFromCGRect(self.scrollview.frame),NSStringFromCGRect(self.scrollview.bounds));
//    NSLog(@"imageview[frame:%@------bounds:%@",NSStringFromCGRect(self.imageview.frame),NSStringFromCGRect(self.imageview.bounds));
    
    NSLog(@"scrollview contentoffset:%@",NSStringFromCGPoint(scrollView.contentOffset));
    NSLog(@"scrollview frame:%@",NSStringFromCGRect(scrollView.frame));
    NSLog(@"scrollview bounds:%@",NSStringFromCGRect(scrollView.bounds));
    NSLog(@"imageview frame:%@",NSStringFromCGRect(self.imageView.frame));
    NSLog(@"imageview bounds:%@",NSStringFromCGRect(self.imageView.bounds));
    
}


@end
