//
//  childBook.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "childBook.h"

@implementation childBook

@synthesize pages, timePerPage, readTimeInMinutes;

//Customize init: Setting data for Child Book
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setPages:0];
        [self setReadTimeInMinutes:0];
    }
    return self;
}

-(void)calculateReadTime
{
    [self setPages:(readTimeInMinutes / timePerPage)];
}

@end
