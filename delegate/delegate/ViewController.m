//
//  ViewController.m
//  delegate
//
//  Created by 石場清子 on 2019/06/23.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import "ViewController.h"
#import "Hoge.h"

@interface ViewController () <HogeDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Hoge *hoge = [Hoge new];
    hoge.delegate = self;
    [hoge fuga];
}

- (void)hoge:(nonnull NSString *)hogeString {
    NSLog(@"%@", hogeString);
}

@end
