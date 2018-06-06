//
//  BSYTableViewCell.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYTableViewCell.h"

@implementation BSYTableViewCell

+(BSYTableViewCell *)initWithTableview:(BSYTableView *)tableview cellReuseIdentifier:(NSString *)cellReuseIdentifier
{
    BSYTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:cellReuseIdentifier];
    if (!cell) {
        cell = [[BSYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellReuseIdentifier];
    }else//当页面拉动的时候 当cell存在并且最后一个存在 把它进行删除就出来一个独特的cell我们在进行数据配置即可避免
       {
        while ([cell.contentView.subviews lastObject] != nil)
            {
            [(UIView *)[cell.contentView.subviews lastObject] removeFromSuperview];
            }
        }
    return cell;
}

@end
