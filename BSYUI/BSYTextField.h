//
//  BSYTextField.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYTextField : UITextField


/**
 设置titleString
 */
-(BSYTextField * (^)(NSString *))bsy_Title;

/**
 设置titleColor
 */
-(BSYTextField * (^)(UIColor *))bsy_TitleColor;

/**
 设置title的字体大小
 */
-(BSYTextField * (^)(CGFloat ))bsy_TitleFont;

/**
 设置UI位置大小
 */
-(BSYTextField * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYTextField * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYTextField *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYTextField *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYTextField *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYTextField *(^)(bool ))bsy_masksToBounds;
@end
