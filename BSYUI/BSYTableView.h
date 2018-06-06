//
//  BSYTableView.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BSYTableViewCell;

@interface BSYTableView : UITableView
/**
 赋值数据
 */
@property (nonatomic ,strong)NSMutableArray *dataArray;


/**
 重写init方法
 */
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style  cellReuseIdentifier:(NSString *)cellReuseIdentifier;

/**
 回调cell
 */
@property (nonatomic ,copy)void(^BSYTableViewCellBlock)(NSIndexPath *IndexPath, id cellObject,BSYTableViewCell *cell);


/**
 点击cell
 */
@property (nonatomic ,copy)void(^BSYTableViewDidSelectRowAtIndexPathBlock)(id cellObject);

/**
 设置UI位置大小
 */
-(BSYTableView * (^)(CGRect ))bsy_Rect;

/**
 设置UI的背景
 */
-(BSYTableView * (^)(UIColor *))bsy_backColor;

/**
 设置边框颜色
 */
-(BSYTableView *(^)(UIColor *))bsy_borderColor;

/**
 设置边框宽度
 */
-(BSYTableView *(^)(CGFloat ))bsy_borderWith;
/**
 设置边框弧度
 */
-(BSYTableView *(^)(CGFloat ))bsy_cornerRadius;

/**
 设置裁切
 */
-(BSYTableView *(^)(bool ))bsy_masksToBounds;
@end
