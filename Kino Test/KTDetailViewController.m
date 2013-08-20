//
//  KTDetailViewController.m
//  Kino Test
//
//  Created by Диана Корсак on 13.08.13.
//  Copyright (c) 2013 Диана Корсак. All rights reserved.
//

#import "KTDetailViewController.h"
#import "KTMasterViewController.h"

@interface KTDetailViewController ()

- (void)configureView;

@end

@implementation KTDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    if (self.detailItem) {
        
        NSDictionary *kino = self.detailItem;
        NSString *original = [[kino objectForKey:@"title"] objectForKey:@"original"];
        NSString *ru = [[kino objectForKey:@"title"] objectForKey:@"ru"];
        NSString *country = [kino objectForKey:@"country"];
        NSNumber *year = [kino objectForKey:@"year"];
        NSNumber *ratingImdb = [[kino objectForKey:@"rating"] objectForKey:@"imdb"];
        NSNumber *ratingKinopoisk = [[kino objectForKey:@"rating"] objectForKey:@"kinopoisk"];
        kinoCountry.text = country;
        kinoYear.text = [[ NSString alloc ] initWithFormat:@"%@", year];
        kinoRatingImdb.text = [[ NSString alloc ] initWithFormat:@"%@", ratingImdb];
        kinoRatingKinopoisk.text = [[ NSString alloc ] initWithFormat:@"%@", ratingKinopoisk];
        
        kinoOriginal.text = original;
        kinoRu.text = ru;

        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

                NSString *imageURL = [[kino objectForKey:@"images"] objectForKey:@"small"];
                NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]];
                dispatch_async(dispatch_get_main_queue(), ^{
                    kinoImage.image = [UIImage imageWithData:data];
                  
                    [self configureView];
            });
        });
    }
      
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


@end
