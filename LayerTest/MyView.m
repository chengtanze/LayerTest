//
//  MyView.m
//  LayerTest
//
//  Created by wangsl-iMac on 14/12/9.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "MyView.h"
#import "MyLayer.h"


@interface MyView()
{
    MyLayer * _layer;
}
@end

@implementation MyView

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        MyLayer * myLayer = [[MyLayer alloc]init];
        [myLayer setBounds:CGRectMake(0, 0, 200, 200)];
        myLayer.backgroundColor = [UIColor yellowColor].CGColor;
        
        [myLayer setAnchorPoint:CGPointMake(0, 0)];
        [myLayer setPosition:CGPointMake(100, 100)];
        
        _layer = myLayer;
        
        [self.layer addSublayer:myLayer];
        
        [myLayer setNeedsDisplay];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        MyLayer * myLayer = [[MyLayer alloc]init];
        [myLayer setBounds:CGRectMake(0, 0, 200, 200)];
        myLayer.backgroundColor = [UIColor yellowColor].CGColor;
        
        [myLayer setAnchorPoint:CGPointMake(0, 0)];
        [myLayer setPosition:CGPointMake(100, 100)];
        
        _layer = myLayer;
        
        [self.layer addSublayer:myLayer];
        
        [myLayer setNeedsDisplay];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"drawRect in view");
   
}

-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    NSLog(@"drawLayer in view");
    [super drawLayer:layer inContext:ctx];
    
}

@end
