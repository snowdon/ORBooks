//
//  BooksTableViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BooksTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *booksTableView;
}

@end
