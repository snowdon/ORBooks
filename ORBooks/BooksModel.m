//
//  BooksModel.m
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "BooksModel.h"


@implementation BooksModel

@synthesize books;
@synthesize bookImages;

- (id)init 
{
    self = [super init];
    NSMutableArray *tmpBooks = [[NSArray alloc] initWithObjects:
                                @"Head First Java",
                                @"Head First iPhone",
                                @"Head First tennis",
                                nil];
    self.books = tmpBooks;
    [tmpBooks release];
    NSMutableArray *tmpImages = [[NSArray alloc] initWithObjects:
                                 @"avator1.png", @"avator2.png", @"avator3.png", nil];
    
    self.bookImages = tmpImages;
    [tmpImages release];
    return self;
}

- (int)getNumberOfBooks
{
    return  [books count];
}

- (NSString *)getBookTitleAtIndex:(int)index
{
    return [books objectAtIndex:index];
}


- (UIImage *)getBookImageAtIndex:(int)index
{
    UIImage *bookImage = [UIImage imageNamed:[bookImages objectAtIndex:index]];
    return bookImage;
}


- (void) dealloc
{
    [books release];
    [bookImages release];
    [super dealloc];
}

@end
