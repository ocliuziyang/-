//
//  CycleCell.h
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CycleCell : UICollectionViewCell

@property (nonatomic, strong)UIImageView *imageView;
@property (nonatomic, strong)UILabel *titleLabel;

@property (nonatomic, strong)UIColor *titleLabelTextColor;
@property (nonatomic, assign)CGFloat titleLabelHeight;
@property (nonatomic, strong)UIFont *titleLabelFont;
@property (nonatomic, strong)UIColor *titleLabelBackGroundColor;

@property (nonatomic, assign)BOOL justShowTitleLabel;//只显示文字

@end
