//
//  BooksTableViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookDetailViewController;
@class BooksModel;

@interface BooksTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *booksTableView;
    NSMutableArray *booksArray;
    BookDetailViewController *bookDetailViewController;
    BooksModel *booksModel;
}

@property (nonatomic, retain) NSMutableArray *booksArray;
@property (nonatomic, retain) BookDetailViewController *bookDetailViewController;
@property (nonatomic, retain) BooksModel *booksModel;

@end
