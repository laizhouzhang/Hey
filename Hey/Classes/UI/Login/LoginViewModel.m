//
//  LoginViewModel.m
//  Hey
//
//  Created by Ascen on 2017/4/22.
//  Copyright © 2017年 Ascen. All rights reserved.
//

#import "LoginViewModel.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "UserManager.h"
#import "SIMPConnection.h"
#import "Constants.h"
#import "AccessTokenStore.h"
#import "User.h"
#import "Store.h"

@implementation LoginViewModel

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (RACCommand *)loginCommand {
    if (!_loginCommand) {
        _loginCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {\
            @weakify(self)
            return [[[UserManager sharedManager] loginWithUserId:self.userId password:self.password] doNext:^(id  _Nullable x) {
                @strongify(self)
                [SIMPConnection connectToHost:serverAddress port:socketPort forUser:self.userId];
            }];
        }];
    }
    return _loginCommand;
}

@end