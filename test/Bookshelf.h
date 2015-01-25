//
//  Bookshelf.h
//  test
//
//  Created by XuWei on 15/1/24.
//  Copyright (c) 2015年 XuWei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Bookshelf : NSObject

@property (nonatomic, retain) NSMutableArray *bookList;

- (id) init;

- (void) addOneBook: (Book *) newBook;
- (void) removeOneBookByName: (NSString*) bookName;

- (NSUInteger) countOfBookList;
- (void) insertObject:(id) anObject inBookListAtIndex:(NSUInteger)index;
- (void) removeObjectFromBookListAtIndex:(NSUInteger)index;
- (id) objectInBookListAtIndex:(NSUInteger)index;

- (void) dealloc;


@end
