//
//  LineupTableViewController.h
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LineupTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *lineupTableView;
}

@end
