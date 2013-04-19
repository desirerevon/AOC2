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
    
}//working



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
            self.view.backgroundColor = [UIColor whiteColor];
            screen.text = @"Hello!";
        }
    }
    
}//working


//Numbers pressed on calculator
//Get the number and place it in the text label
//prevent trailing zeros
//if the user has input zero they are considered in the process of typing or not at all///////

-(IBAction)numPressed:(UIButton*)sender 

{
    firstNum = firstNum *10 + (float)[sender tag];
    screen.text = [NSString stringWithFormat:@"%2f", firstNum];
   

}//working




//ADD NUMBERS//////////////////////////////////////////////////////////////////////
-(IBAction)findSum:(id)sender;
{
if(sumButton == 0) sum = firstNum;

 else {
        switch (sumButton) {
            
        case 1:
            sum = sum + firstNum;
            break;
        case 2:
            sum = sum - firstNum;
            break;
        case 3:
            sum = sum * firstNum;
            break;
        case 4:
            sumButton = 0;
            break;
                
                
    }
  }
    firstNum = 0;
    displayText.text = [NSString stringWithFormat:@"%2f",sum];
    if ([sender tag] == 0) sum = 0;
    sumButton = [sender tag];
}

//CLEAR CALC MEMORY AND RESET////////////////////////////////////////////////////////
-(IBAction)onClear:(id)sender; 
{
    sumButton = 0;
    displayText.text = @"0";
    
    
}//working



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
            self.view.backgroundColor = [UIColor magentaColor];
        }
        else if (colorSelectorIndex == 2)
        {
            self.view.backgroundColor = [UIColor brownColor];
        };
    }
}// working

@end
