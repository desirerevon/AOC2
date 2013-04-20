//
//  infoViewController.m
//  bookFactory
//
//  Created by Desire Gardner on 4/19/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//




#import "infoViewController.h"



@interface infoViewController ()

@end

@implementation infoViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
//Function that closes second view page
-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
