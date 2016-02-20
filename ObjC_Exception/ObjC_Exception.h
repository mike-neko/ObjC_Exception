//
//  ObjC_Exception.h
//  ObjC_Exception
//
//  Created by M.Ike on 2015/12/20.
//  Copyright © 2015年 M.Ike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjC_Exception : NSObject
+ (void)objC_try:(nonnull void(^)())objC_try
      objC_catch:(nonnull void(^)(NSException* _Nonnull))objC_catch
    objC_finally:(nullable void(^)())objC_finally;
@end