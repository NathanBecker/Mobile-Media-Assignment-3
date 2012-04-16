//
//  MasterViewController.m
//  Restaurants
//
//

#import "MasterViewController.h"

@implementation MasterViewController
@synthesize restaurants;


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Restaurant* piopio = [[Restaurant alloc] init];
    
    piopio.name = @"Pio Pio";
    piopio.address = @"746 First Avenue\nNew York, NY 10128";
    piopio.cuisineType = @"Peruvian";
    piopio.yearOpened = 1995;
    
    Review* review1 = [[Review alloc] init];
    review1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    review1.reviewer = @"The Addams";
    review1.score = 5;
    review1.numberOfHelpfulReviews = 19;
    review1.numberOfUnhelpfulReviews = 8;
    
    Review* review2 = [[Review alloc] init];
    review2.text = @"I DONE POSTED ON DA INTARWEBS!";
    review2.reviewer = @"Anonymous";
    review2.score = 1;
    review2.numberOfHelpfulReviews = 0;
    review2.numberOfUnhelpfulReviews = 45;
    
    Review* review3 = [[Review alloc] init];
    review3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    review3.reviewer = @"Jim Carr";
    review3.score = 5;
    review3.numberOfHelpfulReviews = 28;
    review3.numberOfUnhelpfulReviews = 2;
    
    Review* review4 = [[Review alloc] init];
    review4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    review4.reviewer = @"Paul";
    review4.score = 4;
    review4.numberOfHelpfulReviews = 14;
    review4.numberOfUnhelpfulReviews = 5;
    
    Review* review5 = [[Review alloc] init];
    review5.text = @"Hated it!";
    review5.reviewer = @"Nathan";
    review5.score = 3;
    review5.numberOfHelpfulReviews = 300;
    review5.numberOfUnhelpfulReviews = 2;
    
    piopio.reviews = [[NSMutableArray alloc] initWithObjects:review1, review2, review3, review4, nil]; 
    [piopio.reviews addObject:review5];


    Restaurant* SidewalkCafe = [[Restaurant alloc] init];
    SidewalkCafe.name = @"Sidewalk Cafe";
    SidewalkCafe.address = @"30 Maujer Street, Brooklyn, NY";
    SidewalkCafe.cuisineType = @"French";
    SidewalkCafe.yearOpened = 2010;
    
    self.restaurants = [[NSMutableArray alloc] initWithObjects: piopio, SidewalkCafe, nil];
    
    Review* SidewalkCafeReview1 = [[Review alloc] init];
    SidewalkCafeReview1.text = @"SUCKS.";
    SidewalkCafeReview1.reviewer = @"Nathan2";
    SidewalkCafeReview1.score = 1;
    SidewalkCafeReview1.numberOfHelpfulReviews = 5;
    SidewalkCafeReview1.numberOfUnhelpfulReviews = 1;
    
    Review* SidewalkCafeReview2 = [[Review alloc] init];
    SidewalkCafeReview2.text = @"Tuesday is half price night. I wish.";
    SidewalkCafeReview2.reviewer = @"Cooper Jones";
    SidewalkCafeReview2.score = 2;
    SidewalkCafeReview2.numberOfHelpfulReviews = 20;
    SidewalkCafeReview2.numberOfUnhelpfulReviews = 4;
    
    SidewalkCafe.reviews = [[NSMutableArray alloc] initWithObjects: SidewalkCafeReview1, SidewalkCafeReview2, nil];
    
  
    
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath
                                                                              *)indexPath
{
    //This is the cell identifier we set in the Storyboard file
    NSString* cellIdentifier = @"RestaurantCell";
    
    //This line asks the tableView to "reuse" a cell. It will return a UITableViewCell with the identifier given.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //The cell type we selected in the storyboard supports a textLabel and a detailTextLabel. We'll set them both here.
    cell.textLabel.text = @"Pio Pio";
    cell.detailTextLabel.text = @"Peruvian";
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
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
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

@end
