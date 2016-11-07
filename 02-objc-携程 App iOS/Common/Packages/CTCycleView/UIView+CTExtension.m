//
//  UIView+CTExtension.m
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import "UIView+CTExtension.h"

@implementation UIView (CTExtension)

-(CGFloat)ct_width {
    return self.frame.size.width;
}

- (void)setCt_width:(CGFloat)ct_width {
    CGRect temp = self.frame;
    temp.size.width = ct_width;
    self.frame = temp;
}


- (CGFloat)ct_height {
    return self.frame.size.height;
}

- (void)setCt_height:(CGFloat)ct_height {
    CGRect temp = self.frame;
    temp.size.height = ct_height;
    self.frame = temp;
}

- (CGFloat)ct_x {
    return self.frame.origin.x;
}

- (void)setCt_x:(CGFloat)ct_x {
    CGRect temp = self.frame;
    temp.origin.x = ct_x;
    self.frame = temp;
}

- (CGFloat)ct_y {
    return self.frame.origin.y;
}

- (void)setCt_y:(CGFloat)ct_y {
    CGRect temp = self.frame;
    temp.origin.y = ct_y;
    self.frame = temp;
}

@end
