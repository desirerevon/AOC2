//
//  kidBook.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "kidBook.h"

@implementation kidBook

@synthesize pages, timePerPage, readTimeMinutes;
//Customize init: Setting data for Adult Book

-(id)init
{
    self = [super init];
    if(self != nil)
        
    {
        [self setPages:0];
        [self setReadTimeMinutes:0];
    }
    return self;
}

//Override Base Data to factor in new data
-(void)calculateReadTime
{
    [self setTimePerPage:(readTimeMinutes / pages)];

}
@end
