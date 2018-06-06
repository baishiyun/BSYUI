//
//  BSYLabel.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYLabel : UILabel

/**
 设置titleString
 */
-(BSYLabel * (^)(NSString *))bsy_Title;

/**
 设置titleColor
 */
-(BSYLabel * (^)(UIColor *))bsy_TitleColor;

/**
 设置title的字体大小
 */
-(BSYLabel * (^)(CGFloat ))bsy_TitleFont;

/**
 设置UI位置大小
 */
-(BSYLabel * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYLabel * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYLabel *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYLabel *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYLabel *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYLabel *(^)(bool ))bsy_masksToBounds;
@end
