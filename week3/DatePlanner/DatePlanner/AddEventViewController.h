//
//  AddEventViewController.h
//  DatePlanner
//
//  Created by Desire Gardner on 4/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventDelegate <NSObject>

@required
-(void)passEvent:(NSString*)string;

@end

@interface AddEventViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *date;

    NSString *newText;
    NSString *xEvent;
    id <EventDelegate> delegate;
}

-(IBAction)onSaveEvent:(id)sender;
-(IBAction)closeKeyboard:(id)sender;

@property (strong) id <EventDelegate> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *date;

@end
