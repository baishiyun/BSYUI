//
//  BSYTableViewCell.h
//  BSYUI
//
//  Created by 白仕云 on 2018/6/5.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSYTableView.h"

@interface BSYTableViewCell : UITableViewCell
+(BSYTableViewCell *)initWithTableview:(BSYTableView *)tableview cellReuseIdentifier:(NSString *)cellReuseIdentifier;

@end
