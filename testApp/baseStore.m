//
//  baseStore.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "baseStore.h"

@implementation baseStore

@synthesize list, pagesRead, readTimeMinutes;

//Initialize Defautls. Set read time to zero.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
         [self setReadTimeMinutes:0];
         [self setList:0];
         [self setPagesRead:0];
       
    
    }
    return self;
}

//Calculation For Read Time
-(void)calculateReadTime
{
    NSLog(@"It will take %i minutes to read.",readTimeMinutes);
}

@end
