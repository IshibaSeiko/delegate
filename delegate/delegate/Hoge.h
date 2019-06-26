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

@protocol AlertDelegate <NSObject>

- (void) showAlert;

@end

@interface Hoge : NSObject

@property (weak, nonatomic) id <HogeDelegate> hogeDelegate;
- (void) fuga;

@property (weak, nonatomic) id <AlertDelegate> alertDelegate;
- (void) action;

@end



NS_ASSUME_NONNULL_END
