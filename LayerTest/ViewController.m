//
//  ViewController.m
//  LayerTest
//
//  Created by wangsl-iMac on 14/12/8.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer * myLayer = [[CALayer alloc]init];
    [myLayer setBounds:CGRectMake(0, 0, 200, 200)];
    myLayer.backgroundColor = [UIColor blueColor].CGColor;
    //UIImage * image = [UIImage imageNamed:@"news-icon"];
    //[myLayer setContents:(id)image.CGImage];
    
    
    myLayer.delegate = self;
    [myLayer setAnchorPoint:CGPointMake(0, 0)];
    [myLayer setPosition:CGPointMake(100, 100)];
    
  //  [myLayer setNeedsDisplay];
    
    //[self.view.layer addSublayer:myLayer];
    
    CALayer * myLayer1 = [[CALayer alloc]init];
    [myLayer1 setBounds:CGRectMake(0, 0, 200, 200)];
    myLayer1.backgroundColor = [UIColor blackColor].CGColor;

    
    myLayer1.delegate = self;
    [myLayer1 setAnchorPoint:CGPointMake(0, 0)];
    [myLayer1 setPosition:CGPointMake(0, 0)];
    
    [myLayer1 setNeedsDisplay];
    
    [self.view.layer addSublayer:myLayer1];
}

-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    NSLog(@"drawLayer in Ctrl%@", layer);
}

- (void)drawRect:(CGRect)rect {
    
    NSLog(@"drawRect in Ctrl");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
