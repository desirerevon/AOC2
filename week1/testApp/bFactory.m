//
//  bookFactory.m
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import "bookFactory.h"

@implementation bookFactory

//Seeting up data for specific Book
+(baseStore*)createNewBook: (int)bookType
{
    if(bookType == ADULT)
    
    {
        return [[adultBook alloc]init];
    }else if(bookType == KID)
    {
        return [[kidBook alloc]init];
    }else if(bookType == CHILD)
    {
        return [[childBook alloc]init];
    }else 
        return nil;
}
@end
