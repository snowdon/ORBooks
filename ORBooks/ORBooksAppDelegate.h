//
//  ORBooksAppDelegate.h
//  ORBooks
//
//  Created by  Chuns on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BooksNavController;

@interface ORBooksAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UITabBarController *rootController;
    IBOutlet BooksNavController *booksNavController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;
@property (nonatomic, retain) IBOutlet BooksNavController *booksNavController;
@end
