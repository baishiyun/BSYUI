//
//  BSYTableView.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYTableView.h"
#import "BSYTableViewCell.h"
@interface BSYTableView()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic ,strong)NSString *cellReuseIdentifier;
@end

@implementation BSYTableView

/**
 重写init方法
 */
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style  cellReuseIdentifier:(NSString *)cellReuseIdentifier
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.cellReuseIdentifier = [cellReuseIdentifier copy];

    }
    return self;
}

-(void)itemAtIndexPath:(NSIndexPath *)indexPath cell:(BSYTableViewCell *)cell
{
    if (self.BSYTableViewCellBlock) {
        self.BSYTableViewCellBlock(indexPath, self.dataArray[indexPath.row], cell);
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (self.dataArray&&self.dataArray.count>0)?[self.dataArray count]:0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BSYTableViewCell *cell =[BSYTableViewCell initWithTableview:(BSYTableView *)tableView cellReuseIdentifier:self.cellReuseIdentifier];
    [self itemAtIndexPath:indexPath cell:cell];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.BSYTableViewDidSelectRowAtIndexPathBlock) {
        self.BSYTableViewDidSelectRowAtIndexPathBlock(self.dataArray[indexPath.row]);
    
    }
}
/**
 赋值数据
 */
-(void)setDataArray:(NSMutableArray *)dataArray
{
    _dataArray= dataArray;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self reloadData];
    });
}
/**
 设置UI位置大小
 */
-(BSYTableView * (^)(CGRect ))bsy_Rect
{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

/**
 设置UI的背景
 */
-(BSYTableView *(^)(UIColor *))bsy_backColor
{
    return ^(UIColor *backColor) {
        self.backgroundColor = backColor;
        return self;
    };
}

/**
 设置边框颜色
 */
-(BSYTableView *(^)(UIColor *))bsy_borderColor
{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 设置边框宽度
 */
-(BSYTableView *(^)(CGFloat))bsy_borderWith
{
    return ^(CGFloat borderWith){
        self.layer.borderWidth = borderWith;
        return self;
    };
}

/**
 设置边框弧度
 */
-(BSYTableView *(^)(CGFloat ))bsy_cornerRadius{

    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius =cornerRadius;
        return self;
    };
}
/**
 设置裁切
 */
-(BSYTableView *(^)(bool ))bsy_masksToBounds{

    return ^(bool masksToBounds){
        self.layer.masksToBounds =masksToBounds;
        return self;
    };
}

@end
