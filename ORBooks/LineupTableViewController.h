//
//  LineupTableViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LineupDetailViewController;

@interface LineupTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *lineupTableView;
    IBOutlet NSMutableArray *lineupsArray;
    LineupDetailViewController *lineupDetailViewController;
}

@property (nonatomic, retain) NSMutableArray *lineupsArray;
@property (nonatomic, retain) LineupDetailViewController *lineupDetailViewController;

@end
