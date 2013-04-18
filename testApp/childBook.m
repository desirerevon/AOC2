//
//  childBook.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "childBook.h"

@implementation childBook

@synthesize pages, timePerPage, totalReadTime;

//Customize init: Setting data for Child Book
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setTimePerPage:5];
    }
    return self;
}

-(void)calculateReadTime
{
    [self setTotalReadTime:(pages * timePerPage)];
}

@end
