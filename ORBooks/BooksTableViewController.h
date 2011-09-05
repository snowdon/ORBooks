//
//  BooksTableViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BooksTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *booksTableView;
    NSMutableArray *booksArray;
}

@property (nonatomic, retain) NSMutableArray *booksArray;

@end
