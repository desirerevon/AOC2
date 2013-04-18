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
@property NSString *pagesRead;
@property int  readTimeMinutes;
@property NSArray *list;

//Initialize
-(id)init;

//Calculate int ReadTimeInMinutes
-(void)calculateReadTime;


@end
