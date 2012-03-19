//
//  Review.m
//  Restaurants
//
//  Created by Nathan Becker on 3/5/12.
//  Copyright (c) 2012 Parsons New School. All rights reserved.
//

#import "Review.h"

@implementation Review


@synthesize text, reviewer, score, numberOfHelpfulReviews, numberOfUnhelpfulReviews, reviews;

-(id)init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}


-(int) totalReview    
{
    int totalReviewCount;
    totalReviewCount = numberOfHelpfulReviews + numberOfUnhelpfulReviews;
    return totalReviewCount;
}

@end