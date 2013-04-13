//
//  kidBook.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "kidBook.h"

@implementation kidBook

@synthesize numOfBooks,readTimeInMinutes, readTimePerBook;
//Customize init: Setting data for Adult Book

-(id)init
{
    self = [super init];
    if(self != nil)
        
    {
        [self setNumOfBooks:0];
        [self setReadTimePerBook:0];
        [self setReadTimeInMinutes:0];
    }
    return self;
}

//Override Base Data to factor in new data
-(void)calculateReadTime
{
    [self setReadTimeInMinutes:(numOfBooks * readTimePerBook)];

}
@end
