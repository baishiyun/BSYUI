//
//  BSYView.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYView.h"

@implementation BSYView

/**
 设置UI位置大小
 */
-(BSYView * (^)(CGRect ))bsy_Rect
{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

/**
 设置UI的背景
 */
-(BSYView *(^)(UIColor *))bsy_backColor
{
    return ^(UIColor *backColor) {
        self.backgroundColor = backColor;
        return self;
    };
}

/**
 设置边框颜色
 */
-(BSYView *(^)(UIColor *))bsy_borderColor
{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 设置边框宽度
 */
-(BSYView *(^)(CGFloat))bsy_borderWith
{
    return ^(CGFloat borderWith){
        self.layer.borderWidth = borderWith;
        return self;
    };
}

/**
 设置边框弧度
 */
-(BSYView *(^)(CGFloat ))bsy_cornerRadius{

    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius =cornerRadius;
        return self;
    };
}


/**
 设置裁切
 */
-(BSYView *(^)(bool ))bsy_masksToBounds{

    return ^(bool masksToBounds){
        self.layer.masksToBounds =masksToBounds;
        return self;
    };
}
@end
