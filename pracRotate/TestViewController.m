//
//  ViewController.m
//  pracRotate
//
//  Created by wenyanjie on 16/12/12.
//  Copyright © 2016年 wenyanjie. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initViews
{
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *saveBtn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    saveBtn.frame = CGRectMake(10, 240, 140,30);
    [saveBtn addTarget:self action:@selector(ClickSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [saveBtn setTitle:@"测试" forState:UIControlStateNormal];
    saveBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    saveBtn.titleLabel.font = [UIFont systemFontOfSize:17.0f];
    saveBtn.backgroundColor = [UIColor clearColor];
    [self.view addSubview:saveBtn];
}

- (void)ClickSaveBtn
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - viewController rotate method
- (BOOL)shouldAutorotate
{
    return YES;
}

//- (BOOL)prefersStatusBarHidden
//{
//    return NO;
//}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_8_4
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#else
- (NSUInteger)supportedInterfaceOrientations
#endif
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
//}
//
//- (BOOL)prefersStatusBarHidden
//{
//    return NO;
//}

@end
