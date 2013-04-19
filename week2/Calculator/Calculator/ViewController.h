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
}

//IBActions

-(IBAction)onClick:(id)sender; //If user clicks anywhere else besides IBActions listed

-(IBAction)powerSwitch:(UISwitch*)sender;//power calculator on or off

-(IBAction)numPressed:(UIButton*)sender; //a number is pressed

-(NSString*)findSum:(NSInteger)one two:(NSInteger)two;// add numbers

-(IBAction)intializeFunction:(UIButton*)sender; //Add, clear or equal

-(IBAction)colorChange:(UISegmentedControl*)sender; //change background color

@end
