//
// Created by Eric on 4/9/16.
// Copyright (c) 2016 Eric. All rights reserved.
//

#import "NetworkManager.h"


@implementation NetworkManager

+ (instancetype)defaultNetworkManager {
    static NetworkManager *networkManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        networkManager = [[self alloc] init];
    });
    return networkManager;
}

@end