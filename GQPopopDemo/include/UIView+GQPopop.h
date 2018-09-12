//
//  UIView+GQPopop.h
//  GQProjectTemplate
//
//  Created by GuangquanYu on 14/6/18.
//  Copyright © 2018年 GuangquanYu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GQPopop)

- (void)displayViewBottomToEdge:(UIView *)tapView isDecorateDelegate:(BOOL)isDecorateDelegate;
- (void)displayCenter;
- (void)displayCenterRotating;
- (void)displayBottom;
- (void)displayBottomForCustomSuperView:(UIView *)superView isAdapterIPhoneXBottom:(BOOL)isAdapterIPhoneXBottom;
- (void)gq_dismissForGQPopop;


@end
