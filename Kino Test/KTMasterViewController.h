//
//  KTMasterViewController.h
//  Kino Test
//
//  Created by Диана Корсак on 13.08.13.
//  Copyright (c) 2013 Диана Корсак. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface KTMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
