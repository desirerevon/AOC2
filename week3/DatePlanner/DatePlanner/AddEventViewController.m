//
//  AddEventViewController.m
//  DatePlanner
//
//  Created by Desire Gardner on 4/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

@synthesize delegate, date;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        delegate = nil;
        // Custom initialization
    }
    return self;
}


//Edit Textfield//////////////////////////////////////////////////////////////////
-(BOOL)editTextField:(UITextField*)eventTextField
{
    eventTextField.text = @"";
    return YES;
    
}

-(IBAction)onSaveEvent:(id)sender
{
    //Should I reverse this code an d throw the alert before the date function runs
    //in order for the alert to cancel out in second view?
    
    
    //Allows user to choose a date
    //Keeps older days grayed out
    date.minimumDate = [NSDate date];
    NSDate *userDate = [date date];
    if(userDate != nil)
    {
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat != nil) {
            [dateFormat setDateFormat:@"MMMM dd, h:mm a"];
        }
        newText = [dateFormat stringFromDate:userDate];
        NSLog(@"%@", newText);
    }
    

    [self dismissViewControllerAnimated:false completion:nil];
    if (delegate != nil)
    {
        //Concats date and text field
        xEvent = [NSString stringWithFormat:@"%@ \n%@ \n \n", textField.text, newText];
        [delegate passEvent: xEvent];
    }
    if ([textField.text length] == 0)
    {
        UIAlertView *showAlert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"Please create an event before you save." delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        if (showAlert != nil)
        {
            [showAlert show];
            
            }
    }
}




//Closes keyboard when user is done typing///////////////////////////////////////
-(IBAction)closeKeyboard:(id)sender
{
    [textField resignFirstResponder];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     date.minimumDate = [NSDate date];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
