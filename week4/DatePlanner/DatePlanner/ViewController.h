//
//  ViewController.h
//  DatePlanner
//
//  Created by Desire Gardner on 4/23/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"


@interface ViewController : UIViewController 

{
    IBOutlet UIButton *saveButton; //save
    IBOutlet UIButton *clearButton; //clear data
    IBOutlet UITextView *textView; // text view
    IBOutlet UILabel *addLabel; //event labels
    
    //swipe right gesture
   UISwipeGestureRecognizer *rightSwipe; //right swipe gesture
    NSUserDefaults *userDefaults; //NSDefaults
}


-(IBAction)onClick:(id)sender; //onSave click event
-(IBAction)onClear:(id)sender; //clear list
-(IBAction)onClickInternet:(id)sender;//opens safari
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
