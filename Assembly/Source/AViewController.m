//
//  AViewController.m
//  ModuleA
//
//  Created by fansen on 2021/1/12.
//

#import "AViewController.h"

#import <ModuleB_Category/CTMediator+B.h>

@interface AViewController ()

@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController
{
    NSInteger _clickNum;
}

#pragma mark - life cycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
    
    _clickNum = 0;
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];

    [self.pushBViewControllerButton sizeToFit];
    self.pushBViewControllerButton.center = self.view.center;
}


#pragma mark - event response

- (void)selectRightAction:(UIButton *)button {
    
    _clickNum++;
    
    if (self.callBackBlock) {
        self.callBackBlock(@(_clickNum));
    }
}

- (void)didTappedPushBViewControllerButton:(UIButton *)button {
    
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
}


#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton {
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}


@end
