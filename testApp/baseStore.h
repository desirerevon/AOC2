//
//  baseStore.h
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import <Foundation/Foundation.h>

@interface baseStore : NSObject

{
    int bookEnum;
}

typedef enum
{
    ADULT,
    KID,
    CHILD
}bookEnum;


//Data Members: Array[books], read time in minutes, pages
@property NSArray *bookList;
@property NSString *pagesRead;
@property int readTimeInMinutes;

//Initialize
-(id)init;

//Calculate int ReadTimeInMinutes
-(void)calculateReadTime;


@end
