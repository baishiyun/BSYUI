//
//  BSYView.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BSYView : UIView

/**
 设置UI位置大小
 */
-(BSYView * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYView * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYView *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYView *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYView *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYView *(^)(bool ))bsy_masksToBounds;
@end
