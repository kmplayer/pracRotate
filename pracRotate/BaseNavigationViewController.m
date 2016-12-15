//
//  BaseNavigationViewController.m
//  pracRotate
//
//  Created by wenyanjie on 16/12/12.
//  Copyright © 2016年 wenyanjie. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController ()

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_8_4
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#else
- (NSUInteger)supportedInterfaceOrientations
#endif
{
    return self.topViewController.supportedInterfaceOrientations;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
