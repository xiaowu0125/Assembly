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
    
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
