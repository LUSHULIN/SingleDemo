
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
        _appData = [[AppData alloc]init];
    });
    NSLog(@"测试分支版本功能");
    return _appData;
}

@end
