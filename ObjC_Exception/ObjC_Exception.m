//
//  ObjC_Exception.m
//  ObjC_Exception
//
//  Created by M.Ike on 2015/12/20.
//  Copyright © 2015年 M.Ike. All rights reserved.
//

#import "ObjC_Exception.h"

@implementation ObjC_Exception
+ (void)objC_try:(void (^)())objC_try
      objC_catch:(void (^)(NSException*))objC_catch
    objC_finally:(void (^)())objC_finally {
    @try {
        objC_try();
    }
    
    @catch (NSException* exception) {
        objC_catch(exception);
    }

    @finally {
        if (objC_finally) {
            objC_finally();
        }
    }
}
@end