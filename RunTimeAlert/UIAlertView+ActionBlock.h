//
//  UIAlertView+ActionBlock.h
//  RunTimeAlert
//
//  Created by taowang on 16/5/20.
//  Copyright © 2016年 yunhu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^AlertCallBack)(UIAlertView *, NSUInteger);
@interface UIAlertView (ActionBlock)<UIAlertViewDelegate>
@property (nonatomic, copy) AlertCallBack callBack;
@end
