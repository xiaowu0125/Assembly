//
//  Target_A.m
//  ModuleA
//
//  Created by fansen on 2021/1/12.
//

#import "Target_A.h"

#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)params {
    
    typedef void (^CallbackType)(id);
    CallbackType callback = params[@"callback"];

    AViewController *viewController = [[AViewController alloc] init];
    [viewController setCallBackBlock:^(id  _Nonnull params) {
        if (callback) {
            callback(params);
        }
    }];
    return viewController;
}

@end
