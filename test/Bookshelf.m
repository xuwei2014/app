//
//  Bookshelf.m
//  test
//
//  Created by XuWei on 15/1/24.
//  Copyright (c) 2015年 XuWei. All rights reserved.
//

#import "Bookshelf.h"

@implementation Bookshelf

@synthesize bookList;

- (id) init {
    if ([super init]) {
        self.bookList = [[NSMutableArray alloc] initWithCapacity:0];
        
        [self addObserver:self forKeyPath:@"bookList" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
        
        return self;
    } else {
        return nil;
    }
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@"bookList"]) {
        NSLog(@"------------------------");
        NSLog(@"total: %ld", bookList.count);
        NSLog(@"info:");
        for (Book* tempBook in bookList) {
            NSLog(@"name: %@, price: %@",
                  [tempBook valueForKey:@"name"],
                  [tempBook valueForKey:@"price"]);
        }
        NSLog(@"------------------------");
    }
}

- (void) addOneBook:(Book *)newBook {
    if ([newBook isKindOfClass:[Book class]]) {
        unsigned long listCount = bookList.count;
        [self insertObject:newBook inBookListAtIndex:listCount];
    } else {
        NSLog(@"only the Book!");
    }
}

- (void) removeOneBookByName:(NSString *)bookName {
    if (0 == bookList.count) {
        NSLog(@"no book!");
    } else {
        for (Book* tempBook in bookList) {
            if ([bookName isEqualToString:[tempBook name]]) {
                unsigned long idx = [bookList indexOfObject:tempBook];
                [self removeObjectFromBookListAtIndex:idx];
                break;
            } else {
                NSLog(@"not found!");
            }
        }
    }
}

- (NSUInteger) countOfBookList {
    return [self.bookList count];
}

- (void) insertObject:(id)anObject inBookListAtIndex:(NSUInteger)index {
    [self.bookList insertObject:anObject atIndex:index];
}

- (id) objectInBookListAtIndex:(NSUInteger)index {
    return [self.bookList objectAtIndex:index];
}

- (void) removeObjectFromBookListAtIndex:(NSUInteger)index {
    [self.bookList removeObjectAtIndex:index];
}

- (void) dealloc {
    [self removeObserver:self forKeyPath:@"bookList"];
}

@end
