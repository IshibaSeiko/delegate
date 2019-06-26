//
//  ViewController.m
//  delegate
//
//  Created by 石場清子 on 2019/06/23.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import "ViewController.h"
#import "Hoge.h"

@interface ViewController () <HogeDelegate, AlertDelegate>

@property Hoge *hoge;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.hoge = [Hoge new];
    self.hoge.hogeDelegate = self;
    self.hoge.alertDelegate = self;
    [self.hoge fuga];
}

- (void)hoge:(nonnull NSString *)hogeString {
    NSLog(@"%@", hogeString);
}

- (void)showAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert" message:@"iOS8" preferredStyle:UIAlertControllerStyleAlert];
    
    // addActionした順に左から右にボタンが配置されます
    [alertController addAction:[UIAlertAction actionWithTitle:@"はい" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // otherボタンが押された時の処理
        [self otherButtonPushed];
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"いいえ" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // cancelボタンが押された時の処理
        [self cancelButtonPushed];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)cancelButtonPushed {}
- (void)otherButtonPushed {}

- (IBAction)button:(UIButton *)sender {
    [self.hoge action];
}

@end
