//
//  ViewController.m
//  DatePlanner
//
//  Created by Desire Gardner on 4/23/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//



#import "ViewController.h"
#import "EventsManager.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//SWIPE RIGHT ACTION TO ADD EVENT SCREEN///////////////////////////////////////////////////
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
	AddEventViewController *addEventViewController = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if (addEventViewController != nil) {
        [self presentViewController:addEventViewController animated:true completion:^(){}];
    }
}

//ALLOCATES USER ENTRY, SETS THE INSTANCE AND THROWS AND ALERT ONCE SAVED//////////////////////
-(IBAction)onClick:(id)sender
{
    NSString *userEntries = [[NSString alloc] initWithString:textView.text];
    [userDefaults setObject:userEntries forKey:@"userEntries"];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT!" message:@"Your event has been saved!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alert != nil) {
        [alert show];
    }
    
}

//CLEAR LIST EVENTS AND ADD DEFAULT TEXT///////////////////////////////////////////////////////
-(IBAction)onClear:(id)sender
{
    if ([textView.text length] > 0)
    {
        textView.text = @"Add New Event..";
    }
}




//MANAGES EVENT WITH SINGLETON:WORKING TOGETHER/////////////////////////////////////////////////
- (void)viewDidLoad
{
	//STATIC METHOD LOADINSTANCE: LOADS DATA INTO TEXTVIEW
    [EventsManager LoadInstance];
    
    
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userDefaults objectForKey:@"userEntries"] != nil)
    {
        textView.text = [userDefaults objectForKey:@"userEntries"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillAppear:(BOOL)animated
{
    if ([[EventsManager GetInstance] addEvent] == TRUE) 
    {
    	NSMutableString *text = [[NSMutableString alloc] initWithString:textView.text];
        
		[text appendString:[[EventsManager GetInstance] eventString]]; 
        textView.text = text;
        
        [[EventsManager GetInstance] setAddEvent:FALSE]; 
    }
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)]; 
    
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;

    [addLabel addGestureRecognizer:rightSwipe];
    
}

//MANAGES EVENT WITH SINGLETON: WORKING TOGETHER///////////////////////////////////////////////


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//OPENS UP GOOGLE: IN SAFARI/////////////////////////////////////////////////////////////////////
-(IBAction)onClickInternet:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    
    if (url != nil)
    {
        [[UIApplication sharedApplication] openURL:url];
    }
}


@end
