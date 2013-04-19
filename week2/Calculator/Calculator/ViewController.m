//
//  ViewController.m
//  Calculator
//
//  Created by Desire Gardner on 4/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    screen.enabled = FALSE; //diables screen action on entire calc
    screen.text = @"0";//sets default to zero
    calcPower.enabled= TRUE; //default on
    numOne = 0; //global nums set to 0
    numTwo = 0;
    
    typing = FALSE; //user has not typed a value other than 0 or not typed at all
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


///IBActions/////////////////////////////////////////////////////////////////

//SWITCH SCREENS////////////////////////////////////////////////////////////////////
-(IBAction)onClick:(id)sender
{
    infoViewController *viewController = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:TRUE];
    }
    
}



//Turns calculator on or off
//prints text hello or goodbye
//changes dark gray if powered down
//changes white if turned on/////////////////////////////////////////////////////////

-(IBAction)powerSwitch:(id)sender

{

    UISwitch *powerSwitch = (UISwitch*)sender;
    if (powerSwitch != nil)
    {
        if (powerSwitch.on == FALSE)
        {
           //change mood once powered down
            NSLog(@"Good Bye!");
            screen.text = @"Good Bye!";
            for (UIButton *eachButton in self.view.subviews)
            {
                eachButton.enabled = FALSE;
            }
            screen.text = @"Good Bye!";
            self.view.backgroundColor = [UIColor darkGrayColor];
            powerSwitch.enabled = TRUE;
        }
        else if (powerSwitch.on == TRUE)
        {
            //displays 0 when turned on
            NSLog(@"Hello!");
            screen.text = @"Hello!";
            for (UIButton *eachButton in self.view.subviews)
            {
               eachButton.enabled = TRUE;
            }
            [self clearCalc];
            self.view.backgroundColor = [UIColor whiteColor];
            screen.text = @"0";
        }
    }
    
}


//Numbers pressed on calculator
//Get the number and place it in the text label
//prevent trailing zeros
//if the user has input zero they are considered in the process of typing or not at all///////

-(IBAction)numPressed:(UIButton*)sender 

{
    NSString *number = sender.titleLabel.text;
    NSLog(@"%@", number);
    if ([@"0" isEqual:number] && [@"0" isEqual:screen.text])
    {
        typing = FALSE;
    }
    // if the number on the screen is 0
    else if (typing == FALSE)
    {
        // replace screentext with pressed number
        screen.text = number;
        typing = TRUE;
    }
    else
    {
        // display or append the number on the calculator screen
        screen.text = [screen.text stringByAppendingString:number];
        typing = TRUE;
    }
}




//ADD NUMBERS//////////////////////////////////////////////////////////////////////
//RETURN NUMBERS AS STRINGS////////////////////////////////////////////////////////
-(IBAction)findSum:(id)sender;
{
if(sumButton == 0) sum = firstNum;

 else {
        switch (sumButton) {
            
        case 1:
            sum = sum + firstNum;
            break;
            
    }
  }
}

//CLEAR CALC MEMORY AND RESET////////////////////////////////////////////////////////
-(void)clearCalc
{
    numOne = 0;
    numTwo = 0;
    typing = FALSE;
}




//CHANGE BACKGROUND COLOR//////////////////////////////////////////////////////////
-(IBAction)colorChange:(UISegmentedControl*)sender

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
            self.view.backgroundColor = [UIColor redColor];
        }
        else if (colorSelectorIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        };
    }
}// working

@end
