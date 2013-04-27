//
//  ViewController.h
//  DatePlanner
//
//  Created by Desire Gardner on 4/23/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <EventDelegate>

{
    IBOutlet UITextView *addEvent;
    
    
}


-(IBAction)onClick:(id)sender;

@end
