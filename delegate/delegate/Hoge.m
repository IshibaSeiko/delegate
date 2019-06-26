//
//  Hoge.m
//  delegate
//
//  Created by 石場清子 on 2019/06/23.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import "Hoge.h"

@implementation Hoge

- (void) fuga {
    
    NSString *fugaString = @"fugafuga";
    
    if ([self.hogeDelegate respondsToSelector:@selector(hoge:)]) {
        [self.hogeDelegate hoge:fugaString];
    }
    
}

- (void) action {
    if ([self.alertDelegate respondsToSelector:@selector(hoge:)]) {
        [self.alertDelegate showAlert];
    }
}


@end

