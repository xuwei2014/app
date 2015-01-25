//
//  Book.m
//  test
//
//  Created by XuWei on 15/1/24.
//  Copyright (c) 2015年 XuWei. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name;
@synthesize price;

- (id)initWithInfo:(NSString *)newName price:(NSNumber *)newPrice {
    if ([super init]) {
        [self setName:newName];
        [self setPrice:newPrice];
        
        return self;
    } else {
        return nil;
    }
}

- (void)setNilValueForKey:(NSString *)key {
    if ([key isEqualToString:@"name"]) {
        [self setValue:@"null" forKey:@"name"];
    } else if ([key isEqualToString:@"price"]){
        [self setPrice:[NSNumber numberWithFloat:0.0f]];
    } else {
        [super setNilValueForKey:key];
    }
}

@end
