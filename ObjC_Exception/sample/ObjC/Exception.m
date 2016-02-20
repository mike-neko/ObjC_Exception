//
//  Exception.m
//  ObjC_Exception
//
//  Created by M.Ike on 2016/02/20.
//  Copyright © 2016年 M.Ike. All rights reserved.
//

#import "Exception.h"

@implementation Exception
+ (void)throwError {
    [NSException raise:@"error" format:@"objC Exception!"];
}

@end
