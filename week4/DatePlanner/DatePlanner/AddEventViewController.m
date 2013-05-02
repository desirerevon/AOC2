//
//  AddEventViewController.m
//  DatePlanner
//
//  Created by Desire Gardner on 4/24/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "AddEventViewController.h"
#import "EventsManager.h"


@interface AddEventViewController ()

@end

@implementation AddEventViewController


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}


//IF EVENT IS CREATED APPEND DATA OR THROW AND ALERT///////////////////////////////////////
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
	if ([textField.text length] > 0) 
    {
        //uses the singleton to get the instance of each
        [[EventsManager GetInstance] setEventTitle: textField.text];
        [[EventsManager GetInstance] setTheDate:  chooseDate.date];
        
        //SET ADDEVENT TO TRUE TO GIVE BACK INSTANCE 
        [[EventsManager GetInstance] setAddEvent:TRUE];
        
        
        //USING ARC, DO I NEED TO RELEASE UI CONTROLS?
        [self dismissViewControllerAnimated:true completion:^(){}];
	}
    else 
    {
        //ALERT IF NO EVENT IS ENTERED
        UIAlertView *retryAlert = [[UIAlertView alloc] initWithTitle:@"ALERT!" message:@"Please enter an event." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (retryAlert != nil)
        {
        	[retryAlert show];
        }
    }
}


//LEFT SWIPE DIRECTION AND SETTING DATE TO CURRENT DATE NOT ALLOWING SELECTION OF PAST DATES/////
- (void)viewWillAppear:(BOOL)animated
{
	NSDate *autoDate = [NSDate date];
	
    chooseDate.minimumDate = autoDate; 
    
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [eventLabel addGestureRecognizer:leftSwipe];
}



//Closes keyboard when user is done typing///////////////////////////////////////
-(IBAction)onCloseKeyboard:(id)sender
{
    [textField resignFirstResponder];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
