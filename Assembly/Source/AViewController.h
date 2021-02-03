//
//  AViewController.h
//  ModuleA
//
//  Created by fansen on 2021/1/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CallBackBlock)(id params);

@interface AViewController : UIViewController

@property (nonatomic, copy) CallBackBlock callBackBlock;

@end

NS_ASSUME_NONNULL_END
