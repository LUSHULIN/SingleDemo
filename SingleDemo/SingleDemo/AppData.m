
//
//  AppData.m
//  SingleDemo
//
//  Created by Jason on 17/12/1.
//  Copyright © 2017年 Jason. All rights reserved.
//

#import "AppData.h"

@implementation AppData

+ (void)load{
    [AppData shareInstance];
}

+ (AppData *)shareInstance {
    static AppData *_appData = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _appData = [[super allocWithZone:nil]init];
    });
    NSLog(@"测试分支版本功能");
    return _appData;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [AppData shareInstance];
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [AppData shareInstance] ;
}

@end
