//
//  Book.h
//  test
//
//  Created by XuWei on 15/1/24.
//  Copyright (c) 2015年 XuWei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSNumber *price;

- (id) initWithInfo:(NSString *)newName price:(NSNumber *)newPrice;
- (void) setNilValueForKey:(NSString *)key;

@end
