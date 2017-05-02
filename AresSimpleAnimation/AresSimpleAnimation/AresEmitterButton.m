//
//  AresEmitterButton.m
//  AresSimpleAnimation
//
//  Created by Ares on 17/5/2.
//  Copyright © 2017年 Ares. All rights reserved.
//

#import "AresEmitterButton.h"

@implementation UIImage (AresEmitter)

- (UIImage *)clips{
    UIGraphicsBeginImageContextWithOptions(self.size, false, 0);
    UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    [path addClip];
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end

@interface AresEmitterButton()
@property (nonatomic, weak) UIImage * blingImage;

@end

@implementation AresEmitterButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init{
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (void)setup{
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)sender{
    UIImage * blingImage = [[UIImage imageNamed:@"paopao0"] clips];
    UIImageView * blingImageView = [[UIImageView alloc] initWithImage:blingImage];
    blingImageView.bounds = CGRectMake(0, 0, 15, 15);
    blingImageView.center = CGPointMake(self.bounds.size.width * 0.5, 0);
    

}


@end


