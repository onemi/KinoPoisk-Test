//
//  KTDetailViewController.h
//  Kino Test
//
//  Created by Диана Корсак on 13.08.13.
//  Copyright (c) 2013 Диана Корсак. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTDetailViewController : UIViewController {
IBOutlet UIImageView *kinoImage;
IBOutlet UILabel *kinoOriginal;
IBOutlet UILabel *kinoRu;
    IBOutlet UILabel *kinoCountry;
    IBOutlet UILabel *kinoYear;
    IBOutlet UILabel *kinoRatingImdb;
    IBOutlet UILabel *kinoRatingKinopoisk;
}

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;



@end
