//
//  ReviewViewController.h
//  Restaurants
//
//  Created by Nathan Becker on 4/16/12.
//  Copyright (c) 2012 Parsons New School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface ReviewViewController : UITableViewController
{
    Restaurant* restaurant;
}

@property(readwrite, strong) Restaurant* restaurant;

@end
