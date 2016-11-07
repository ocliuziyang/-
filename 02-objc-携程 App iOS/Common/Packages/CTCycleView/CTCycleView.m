//
//  CTCycleView.m
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import "CTCycleView.h"
#import "CycleCell.h"
#import "UIImageView+WebCache.h"
static NSString * const cycleCellIdentifier = @"CycleCell";
@interface CTCycleView ()<UICollectionViewDataSource>

@property (nonatomic, strong)UICollectionView *collectionView;

@end

@implementation CTCycleView


- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self initialization];
        [self setupCollectionView];
    }
    return self;
}

+ (instancetype)cycleViewWithFrame:(CGRect)frame images:(NSArray *)images titles:(NSArray *)titles {
    
    CTCycleView *ctCycleView = [[CTCycleView alloc]initWithFrame:frame];
    ctCycleView.imagesGroup = [NSArray arrayWithArray:images];
    ctCycleView.titlesGroup = [NSArray arrayWithArray:titles];
    
    return ctCycleView;
}



- (void)initialization {
    
}

- (void)setupCollectionView {
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.itemSize = self.bounds.size;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:flowLayout];
    collectionView.dataSource = self;

    collectionView.pagingEnabled = YES;
    [collectionView registerClass:[CycleCell class] forCellWithReuseIdentifier:cycleCellIdentifier];
    [self addSubview:collectionView];
    self.collectionView = collectionView;
    
}

#pragma maek - Getter & Setter
- (void)setImagesGroup:(NSArray *)imagesGroup {
    _imagesGroup = imagesGroup;
    [self.collectionView reloadData];
}

#pragma mark - UICollectionView DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.imagesGroup.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CycleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cycleCellIdentifier forIndexPath:indexPath];
    
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:self.imagesGroup[indexPath.row]]];
    
    cell.titleLabel.text = [self.titlesGroup objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - UICollectionView Delegate



@end
