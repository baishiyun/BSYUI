//
//  BSYButton.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYButton.h"

@implementation BSYButton

/**
 设置titleString
 */
-(BSYButton * (^)(NSString *))bsy_Title
{
    return ^(NSString *titleString){
        [self setTitle:titleString forState:UIControlStateNormal];
        return self;
    };
}

/**
 设置titleColor
 */
-(BSYButton * (^)(UIColor *))bsy_TitleColor
{
    return ^(UIColor *titleColor){
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

/**
 设置title的字体大小
 */
-(BSYButton * (^)(CGFloat ))bsy_TitleFont
{
    return ^(CGFloat titleFont){
        [self.titleLabel setFont:[UIFont systemFontOfSize:titleFont]];
        return self;
    };
}

/**
 设置按钮图片
 */
-(BSYButton * (^)(UIImage * ))bsy_BtnImage
{
    return ^(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}
/**
 设置按钮背景图片
 */
-(BSYButton * (^)(UIImage * ))bsy_BtnBackImage
{
    return ^(UIImage *backimage){
        [self setBackgroundImage:backimage forState:UIControlStateNormal];
        return self;
    };
}
/**
 设置UI位置大小
 */
-(BSYButton * (^)(CGRect ))bsy_Rect
{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

/**
 设置UI的背景
 */
-(BSYButton *(^)(UIColor *))bsy_backColor
{
    return ^(UIColor *backColor) {
        self.backgroundColor = backColor;
        return self;
    };
}

/**
 设置边框颜色
 */
-(BSYButton *(^)(UIColor *))bsy_borderColor
{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 设置边框宽度
 */
-(BSYButton *(^)(CGFloat))bsy_borderWith
{
    return ^(CGFloat borderWith){
        self.layer.borderWidth = borderWith;
        return self;
    };
}

/**
 设置边框弧度
 */
-(BSYButton *(^)(CGFloat ))bsy_cornerRadius{

    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius =cornerRadius;
        return self;
    };
}


/**
 设置裁切
 */
-(BSYButton *(^)(bool ))bsy_masksToBounds{

    return ^(bool masksToBounds){
        self.layer.masksToBounds =masksToBounds;
        return self;
    };
}

@end
