//
//  BSYImageView.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYImageView : UIImageView


/**
 设置图片
 */
-(BSYImageView * (^)(UIImage * ))bsy_image;

/**
 设置高亮图片
 */
-(BSYImageView * (^)(UIImage * ))bsy_highlightedImage;

/**
 设置UI位置大小
 */
-(BSYImageView * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYImageView * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYImageView *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYImageView *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYImageView *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYImageView *(^)(bool ))bsy_masksToBounds;
@end
