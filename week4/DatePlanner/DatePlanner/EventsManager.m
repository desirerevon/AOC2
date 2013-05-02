//
//  EventsManager.m
//  DatePlanner
//
//  Created by Desire Gardner on 5/1/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "EventsManager.h"

@implementation EventsManager

@synthesize eventTitle, theDate, addEvent;


//staic pointer, object hold on to it's own pointer

static EventsManager *_instance = nil;

//STATIC METHOD: Gets back the pointer////////////////////////////////////////////////////
+(EventsManager*)GetInstance
    {
 
      //RETURNS TO CALLER
      return _instance;
    
    }

//RETURNS THE STRINGS WITH A SPECIFIC DATA FORMAT////////////////////////////////////////
-(NSString*)eventString
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if (dateFormat != nil)
    {
        [dateFormat setDateFormat:@"MMMM dd, h:mm a"];
    }
    NSString *eventStr = [[NSString alloc] initWithFormat:@"%@ \n%@ \n \n", eventTitle, [dateFormat stringFromDate:theDate]];
    return eventStr;
}


//WHERE THE ALLOC IS GOING TO BE SET/////////////////////////////////////////////////////
+(id)alloc
{
    _instance = [super alloc];//sets instance
    
    return _instance;
}

//INITIALIZE SELF////////////////////////////////////////////////////////////////////////
-(id)init
{
    if(self = [super init])
    {
        addEvent = FALSE;
    
    }
    return self;

}

//LOADS THE NEW INSTANCE//////////////////////////////////////////////////////////////////
+(void)LoadInstance
{
    if(_instance == nil)
        
    {
        [[self alloc] init];
    }
}
//END/////////////////////////////////////////////////////////////////////////////////////
@end
