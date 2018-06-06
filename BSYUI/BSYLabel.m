//
//  BSYLabel.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYLabel.h"

@implementation BSYLabel

/**
 设置titleString
 */
-(BSYLabel * (^)(NSString *))bsy_Title
{
    return ^(NSString *title){
        self.text = title;
        return self;
    };
}

/**
 设置titleColor
 */
-(BSYLabel * (^)(UIColor *))bsy_TitleColor
{
    return ^(UIColor *titleColor){
        self.textColor  =titleColor;
        return self;
    };
}

/**
 设置title的字体大小
 */
-(BSYLabel * (^)(CGFloat ))bsy_TitleFont
{
    return ^(CGFloat font){
        self.font = [UIFont systemFontOfSize:font];
        return self;
    };
}
/**
 设置UI位置大小
 */
-(BSYLabel * (^)(CGRect ))bsy_Rect
{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

/**
 设置UI的背景
 */
-(BSYLabel *(^)(UIColor *))bsy_backColor
{
    return ^(UIColor *backColor) {
        self.backgroundColor = backColor;
        return self;
    };
}

/**
 设置边框颜色
 */
-(BSYLabel *(^)(UIColor *))bsy_borderColor
{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 设置边框宽度
 */
-(BSYLabel *(^)(CGFloat))bsy_borderWith
{
    return ^(CGFloat borderWith){
        self.layer.borderWidth = borderWith;
        return self;
    };
}

/**
 设置边框弧度
 */
-(BSYLabel *(^)(CGFloat ))bsy_cornerRadius{

    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius =cornerRadius;
        return self;
    };
}


/**
 设置裁切
 */
-(BSYLabel *(^)(bool ))bsy_masksToBounds{

    return ^(bool masksToBounds){
        self.layer.masksToBounds =masksToBounds;
        return self;
    };
}

@end
