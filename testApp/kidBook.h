//
//  kidBook.h
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import <Foundation/Foundation.h>
#import "baseStore.h"

@interface kidBook :baseStore

//Data for number of books read and time per book
@property int numOfBooks;
@property int readTimePerBook;
@property int readTimeInMinutes;

@end
