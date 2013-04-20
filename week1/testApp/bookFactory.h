//
//  bookFactory.h
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import <Foundation/Foundation.h>
#import "baseStore.h"
#import "adultBook.h"
#import "kidBook.h"
#import "childBook.h"

@interface bookFactory : NSObject

//Class Method
+(baseStore *)createNewBook: (int)bookType;


@end
