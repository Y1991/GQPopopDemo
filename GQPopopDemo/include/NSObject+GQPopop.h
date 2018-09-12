//
//  NSObject+GQPopop.h
//  小磊玩船
//
//  Created by Guangquan Yu on 2018/7/25.
//  Copyright © 2018年 txtechnologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GQPopop)
// 显示相册和拍照
- (void)displayPhotoAlbum;
// 下拉
- (void)displayViewBottomWithArray:(NSArray <NSString *> *) sourceArray view:(UIView *)view;

@end
