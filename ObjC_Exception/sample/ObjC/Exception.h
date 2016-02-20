//
//  Exception.h
//  ObjC_Exception
//
//  Created by M.Ike on 2016/02/20.
//  Copyright © 2016年 M.Ike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exception : NSObject
+ (void)throwError;     // 呼び出すとNSExceptionを発生する
@end
