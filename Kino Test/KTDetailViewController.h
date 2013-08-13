//
//  KTDetailViewController.h
//  Kino Test
//
//  Created by Диана Корсак on 13.08.13.
//  Copyright (c) 2013 Диана Корсак. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
