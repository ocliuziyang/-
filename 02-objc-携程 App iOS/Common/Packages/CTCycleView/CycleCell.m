//
//  CycleCell.m
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import "CycleCell.h"
#import "UIView+CTExtension.h"
@implementation CycleCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupImageView];
        [self setupTitleLabel];
    }
    return self;
}

- (void)setupImageView {
    _imageView = [[UIImageView alloc]init];
    [self.contentView addSubview:_imageView];
}

- (void)setupTitleLabel {
    _titleLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_titleLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (_justShowTitleLabel) {
        _titleLabel.frame = self.bounds;
    } else {
        
        _imageView.frame = self.bounds;
        
        CGFloat width = self.ct_width;
        CGFloat height = _titleLabelHeight;
        CGFloat x = 0;
        CGFloat y = self.ct_height - height;
        
        _titleLabel.frame = CGRectMake(x, y, width, height);
        
    }
    
}



@end
