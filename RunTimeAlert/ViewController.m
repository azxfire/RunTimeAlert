//
//  ViewController.m
//  RunTimeAlert
//
//  Created by taowang on 16/5/20.
//  Copyright © 2016年 yunhu. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+ActionBlock.h"
@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchOne:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"title" message:@"message1" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView.callBack = ^(UIAlertView *alert, NSUInteger buttonIndex){
        NSLog(@"alertView1");
    };
    [alertView show];
}
- (IBAction)touchTow:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"title" message:@"message2" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView.callBack = ^(UIAlertView *alert, NSUInteger buttonIndex){
        NSLog(@"alertView1002");
    };
    [alertView show];
}
- (IBAction)touchThree:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"title" message:@"message" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *alertAction){
        NSLog(@"osversion >= ios8 use this alert");
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
@end
