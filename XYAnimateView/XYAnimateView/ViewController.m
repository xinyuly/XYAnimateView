//
//  ViewController.m
//  XYAnimateView
//
//  Created by smok on 16/10/10.
//  Copyright © 2016年 xy.com. All rights reserved.
//

#import "ViewController.h"
#import "XYAnimateView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)likeButtonAction:(UIButton *)sender {
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.image = [UIImage imageNamed:@"heart"];
    imgView.frame = sender.imageView.bounds;
    
    XYAnimateView *likeView = [[XYAnimateView alloc] initWithFrame:sender.bounds];
    [likeView addSubview:imgView];
    [self.view addSubview:likeView];
    
    likeView.center = CGPointMake(sender.center.x, sender.center.y-10);
    [likeView animateInView:self.view];
}

@end
