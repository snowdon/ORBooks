//
//  BooksModel.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BooksModel : NSObject {
    NSMutableArray *books;
    NSMutableArray *bookImages;
    
}

@property (nonatomic, retain) NSMutableArray *books;
@property (nonatomic, retain) NSMutableArray *bookImages;

- (int)getNumberOfBooks;
- (NSString *)getBookTitleAtIndex:(int)index;
- (UIImage *)getBookImageAtIndex:(int)index;


@end
