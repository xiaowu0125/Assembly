//
//  ViewController.m
//  Assembly
//
//  Created by fansen on 2021/1/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = CGRectMake(100, 100, 200, 100);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"按钮" forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [self.view addSubview:button];
    
    /////////////////////
}


@end
