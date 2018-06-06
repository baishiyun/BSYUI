//
//  BSYButton.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYButton : UIButton


/**
 设置titleString
 */
-(BSYButton * (^)(NSString *))bsy_Title;

/**
 设置titleColor
 */
-(BSYButton * (^)(UIColor *))bsy_TitleColor;

/**
 设置title的字体大小
 */
-(BSYButton * (^)(CGFloat ))bsy_TitleFont;

/**
 设置按钮图片
 */
-(BSYButton * (^)(UIImage * ))bsy_BtnImage;

/**
 设置按钮背景图片
 */
-(BSYButton * (^)(UIImage * ))bsy_BtnBackImage;
/**
 设置UI位置大小
 */
-(BSYButton * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYButton * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYButton *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYButton *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYButton *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYButton *(^)(bool ))bsy_masksToBounds;

@end
