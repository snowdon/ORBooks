//
//  BooksTableViewController.m
//  ORBooks
//
//  Created by  Chuns on 11-9-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "BooksTableViewController.h"
#import "BookDetailViewController.h"
#import "ORBooksAppDelegate.h"
#import "BooksModel.h"

@implementation BooksTableViewController
@synthesize booksArray;
@synthesize bookDetailViewController;
@synthesize booksModel;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"Books", @"My favorite O'Reilly Books");
    
    BooksModel *tmpBooksModel = [[BooksModel alloc] init];
    self.booksModel = tmpBooksModel;
    [tmpBooksModel release];
    
    
  //  NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"Head First Java", @"Head First iPhone", @"Head First Paint", nil];
    
  //  self.booksArray = array;
   // [array release];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
   // return [self.booksArray count];
    return [self.booksModel getNumberOfBooks];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NSUInteger row = [indexPath row];
  //  cell.text = [booksArray objectAtIndex:row];
 //   UILabel *cellLabel = cell.textLabel;
  //  cellLabel.text = [self.booksModel getBookTitleAtIndex:row];
    
    cell.textLabel.text = [self.booksModel getBookTitleAtIndex:row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    NSInteger row = [indexPath row];
    if (self.bookDetailViewController == nil)
    {
        BookDetailViewController *aBookDetail = [[BookDetailViewController alloc] 
                                                 initWithNibName:@"BookDetailViewController" bundle:nil];
        self.bookDetailViewController = aBookDetail;
        [aBookDetail release];
        bookDetailViewController.booksModel = self.booksModel;
        
        
    }
   // bookDetailViewController.title = [NSString stringWithFormat:@"%@", [booksModel getBookTitleAtIndex:row]];
    
  //  bookDetailViewController.title = [NSString stringWithFormat:@"%@", [booksArray objectAtIndex:row]];
    bookDetailViewController.title = [NSString stringWithFormat:@"%@", [booksModel getBookTitleAtIndex:row]];
    
    [bookDetailViewController setIndexForBookImage:row];
    
    [self.navigationController pushViewController:bookDetailViewController animated:YES];
    
  //  ORBooksAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    
    //[delegate.booksNavController pushViewController:bookDetailViewController animated:YES];
}

@end
