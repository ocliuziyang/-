//
//  CTCycleView.h
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTCycleView : UIView

@property (nonatomic, strong)NSArray *imagesGroup;
@property (nonatomic, strong)NSArray *titlesGroup;



+ (instancetype)cycleViewWithFrame:(CGRect)frame images:(NSArray *)images titles:(NSArray *)titles;

@end
