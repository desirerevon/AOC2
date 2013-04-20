//
//  adultBook.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "adultBook.h"

@implementation adultBook

@synthesize pages, timePerPage;

//Customize init: Setting data for Adult Book

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPages:0];
        [self setTimePerPage:0];


    
    }
    return self;
}

//Override Base Data to factor in new data
-(void)calculateReadTime
{
    [self setReadTimeInMinutes:(pages * timePerPage)];
}
@end
