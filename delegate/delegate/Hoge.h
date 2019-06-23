//
//  Hoge.h
//  delegate
//
//  Created by 石場清子 on 2019/06/23.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@protocol HogeDelegate <NSObject>

- (void) hoge:(NSString *)hogeString;

@end

@interface Hoge : NSObject

@property (weak, nonatomic) id <HogeDelegate> delegate;

- (void) fuga;

@end


NS_ASSUME_NONNULL_END
