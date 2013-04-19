//
//  ViewController.h
//  Calculator
//
//  Created by Desire Gardner on 4/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton    *infoScreen;
    IBOutlet UITextField *screen;
    IBOutlet UIButton    *calcPower;
    int numOne;
    int numTwo;
    bool typing;
    int buttonIndex;
    int sumButton;
    float firstNum;
    float sum;
}

//IBActions

-(IBAction)onClick:(id)sender; //If user clicks anywhere else besides IBActions listed

-(IBAction)powerSwitch:(UISwitch*)sender;//power calculator on or off

-(IBAction)numPressed:(UIButton*)sender; //a number is pressed

-(IBAction)findSum:(id)sender; //find sum

-(IBAction)colorChange:(UISegmentedControl*)sender; //change background color

@end
