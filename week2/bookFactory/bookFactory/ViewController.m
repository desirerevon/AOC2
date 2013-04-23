//
//  ViewController.m
//  bookFactory
//
//  Created by Desire Gardner on 4/19/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"
#import "bookFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//POWER ON/OFF CALC/////////////////////////////////////////////////////////////
-(IBAction)powerSwitch:(id)sender

{
    
    UISwitch *powerSwitch = (UISwitch*)sender;
    if (powerSwitch != nil)
    {
        if (powerSwitch.on == FALSE)
        {
            //change mood once powered down
            NSLog(@"Good Bye!");
            fullText.text = @"Good Bye!";
            for (UIButton *eachButton in self.view.subviews)
            {
                eachButton.enabled = FALSE;
            }
            inputType.text = @"Good Bye!";
            self.view.backgroundColor = [UIColor darkGrayColor];
            powerSwitch.enabled = TRUE;
        }
        else if (powerSwitch.on == TRUE)
        {
            //displays 0 when turned on
            NSLog(@"Hello!");
            fullText.text = @"Hello!";
            for (UIButton *eachButton in self.view.subviews)
            {
                eachButton.enabled = TRUE;
            }
            self.view.backgroundColor = [UIColor whiteColor];
            fullText.text = @"Hello!";
        }
    }
    
}//working



//SUBCLASS BUTTONS/////////////////////////////////////////////////////////////
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button == adultButton)
    {
        adultButton.enabled = false;
        kidButton.enabled   = true;
        childButton.enabled = true;
        fullText.text = @"You chose an adult book.";
    
    }
    else if (button == kidButton)
    {
        kidButton.enabled   = false;
        adultButton.enabled = true;
        childButton.enabled = true;
        fullText.text = @"You chose a kid book.";
    }
    else if (button == childButton)
    {
     childButton.enabled = false;
     adultButton.enabled = true;
     kidButton.enabled   = true;
     fullText.text = @"You chose a child book.";
    }
}//working

//STEPPER////////////////////////////////////////////////////////////////////////

-(IBAction)stepper:(id)sender
{
    UIStepper *stepAction = (UIStepper*)sender;
    if (stepAction != nil)
    {
        int intValue = stepAction.value;
        
        label.text = [NSString stringWithFormat:@"You chose %d pages.", intValue];
    }
}// would like this to set back to zero once the book category is changed


//CALCULATE THE READ TIME//////////////////////////////////////////////////////////

-(IBAction)onClickCalculator:(id)sender
{
    int stepValue = stepper.value;
    
    if (adultButton.enabled == NO)
    {
        adultBook *adultB = (adultBook*)[bookFactory createNewBook:ADULT];
        if (adultB != nil)
        {
            [adultB setTimePerPage:2];
            [adultB calculateReadTime];
            int totalReadTime = adultB.timePerPage * stepValue;
            fullText.text = [NSString stringWithFormat:@"You can read %d pages for %d minutes.", stepValue, totalReadTime];
            adultButton.enabled = YES;
            childButton.enabled = YES;
        }
    }
    else if (kidButton.enabled == NO)
    {
        kidBook *kidB = (kidBook*)[bookFactory createNewBook:KID];
        if (kidB != nil)
        {
            [kidB setTimePerPage:4];
            [kidB calculateReadTime];
            int totalReadTime = kidB.timePerPage * stepValue;
            fullText.text = [NSString stringWithFormat:@"You can read %d pages for %d minutes.", stepValue, totalReadTime];
            kidButton.enabled = YES;
            childButton.enabled = YES;
        }
    }
    else if (childButton.enabled == NO)
    {
        childBook *childB = (childBook*)[bookFactory createNewBook:CHILD];
        if (childB != nil)
        {
            [childB setTimePerPage:6];
            [childB calculateReadTime];
            int totalReadTime = childB.timePerPage * stepValue;
            fullText.text = [NSString stringWithFormat:@"You can read %d pages for %d minutes.", stepValue, totalReadTime];
            childButton.enabled = YES;
            kidButton.enabled = YES;
        }
    }
}//working

//CHANGE MOOD COLOR////////////////////////////////////////////////////////////////////
-(IBAction)colorChange:(id)sender 

{
    UISegmentedControl *switchColor = (UISegmentedControl*)sender;
    if (switchColor != nil)
    {
        int colorSelectorIndex = switchColor.selectedSegmentIndex;
        NSLog(@"%d", colorSelectorIndex);
        if(colorSelectorIndex == 0)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (colorSelectorIndex == 1)
        {
            self.view.backgroundColor = [UIColor magentaColor];
        }
        else if (colorSelectorIndex == 2)
        {
            self.view.backgroundColor = [UIColor brownColor];
        };
    }
}//working


//DEVELOPER INFO: SWITCH PAGES///////////////////////////////////////////////////////////
-(IBAction)switchInfoPage:(id)sender
{
    infoViewController *viewController = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
    
}



@end
