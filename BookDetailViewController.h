//
//  BookDetailViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BooksModel;

@interface BookDetailViewController : UIViewController {
    UIImageView *bookImageView;
    BooksModel *booksModel;
    int bookIndex;
    
}

@property (nonatomic, retain)IBOutlet UIImageView *bookImageView;
@property (nonatomic, retain)BooksModel *booksModel;

- (void)setIndexForBookImage:(int)index;

@end
