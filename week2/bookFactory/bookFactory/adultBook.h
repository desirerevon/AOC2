//
//  adultBook.h
//  testApp
//
//  Created by Desire Gardner on 4/11/13.
//
//

#import <Foundation/Foundation.h>
#import "baseStore.h"

@interface adultBook : baseStore

//Data Members: Page numbers and readTime
@property int pages;
@property int timePerPage;
@property int breakTime;

@end
