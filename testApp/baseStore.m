//
//  baseStore.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "baseStore.h"

@implementation baseStore

@synthesize bookList, pagesRead, readTimeInMinutes;

//Initialize Defautls. Set read time to zero.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setReadTimeInMinutes:0];
        [self setBookList:nil];
        [self setPagesRead:nil];
    
    }
    return self;
}

//Calculation For Read Time
-(void)calculateReadTime
{
    NSLog(@"It will take %i minutes to read this book",readTimeInMinutes);
}

@end
