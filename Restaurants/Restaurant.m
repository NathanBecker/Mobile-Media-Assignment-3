//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"

@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews, bestReview, isFavorite;

-(id)init{
    self = [super init];
    if(self){
    }
    return self;
}


-(int)age
{
    return 2012 - yearOpened;
}

//I stole this code below from Michelle Kirby---there was no way I could have written this from my brain...

-(Review*) mostHelpfulReview
{
    int ratingCount;    
    for (int i=0; i< reviews.count; i++) 
    {
        Review* review = [reviews objectAtIndex:i];
        if (review.numberOfHelpfulReviews > 5) {
            if (review.numberOfHelpfulReviews > ratingCount) 
            {
                ratingCount = review.numberOfHelpfulReviews;
                bestReview = review;
            }
        }
        
    }
    return bestReview;
}
-(float)averageCustomerReview
{
    float reviewAvgTotal;
    float reviewAvg;
    for (int i=0; i< reviews.count; i++) 
    {
        reviewAvgTotal += i;
    }
    reviewAvg = reviewAvgTotal/reviews.count;
    return reviewAvg;
    
}

@end
