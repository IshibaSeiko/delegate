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
    
    if ([self.delegate respondsToSelector:@selector(hoge:)]) {
        [self.delegate hoge:fugaString];
    }
    
}

@end

