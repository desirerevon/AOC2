//
//  ViewController.m
//  DatePlanner
//
//  Created by Desire Gardner on 4/23/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(IBAction)onClick:(id)sender
{
    
    AddEventViewController *AddEvent = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if (AddEvent != nil)
    {
        AddEvent.delegate = self;
        [self presentViewController:AddEvent animated:TRUE completion:nil];
    }
}


-(void)passEvent:(NSString *)string
{
    addEvent.text = [addEvent.text stringByAppendingString:string];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


@end
