//
//  AddEventViewController.h
//  DatePlanner
//
//  Created by Desire Gardner on 4/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{
    IBOutlet UITextField *textField; //input text field
    IBOutlet UIDatePicker *chooseDate;     //date
    IBOutlet UIButton *closePad;      //close keyboard
    IBOutlet UILabel *eventLabel; //event labels
    UISwipeGestureRecognizer *leftSwipe; //left swipe gesture
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer; //left swipe action
-(IBAction)onCloseKeyboard:(id)sender; //close keyboard action

@end
