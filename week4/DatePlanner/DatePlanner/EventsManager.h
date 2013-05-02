//
//  EventsManager.h
//  DatePlanner
//
//  Created by Desire Gardner on 5/1/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventsManager : NSObject

@property (nonatomic, strong)  NSString *eventTitle; //event string
@property (nonatomic, strong) NSDate *theDate; //date string
@property BOOL addEvent; //instance created then add new instance, new event


//STATIC METHOD//////////////////////////////////////////////////////////////////////////
+(EventsManager*)GetInstance;

//INSTANCE METHOD///////////////////////////////////////////////////////////////////////
+(void)LoadInstance;

//CREATES THE STRING///////////////////////////////////////////////////////////////////
-(NSString*)eventString;

@end
