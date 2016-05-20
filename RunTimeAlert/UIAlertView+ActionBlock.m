//
//  UIAlertView+ActionBlock.m
//  RunTimeAlert
//
//  Created by taowang on 16/5/20.
//  Copyright © 2016年 yunhu. All rights reserved.
//

#import "UIAlertView+ActionBlock.h"
#import <objc/runtime.h>
@implementation UIAlertView (ActionBlock)
- (void)setCallBack:(AlertCallBack)callBack{
    objc_setAssociatedObject(self, @selector(callBack), callBack, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.delegate = self;
}
- (AlertCallBack)callBack{
    return objc_getAssociatedObject(self, @selector(callBack));
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (self.callBack) {
        self.callBack(alertView, buttonIndex);
    }
}
@end
