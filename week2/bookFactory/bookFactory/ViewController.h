//
//  ViewController.h
//  bookFactory
//
//  Created by Desire Gardner on 4/19/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //Buttons
    IBOutlet UIButton    *adultButton;
    IBOutlet UIButton    *kidButton;
    IBOutlet UIButton    *childButton;
    IBOutlet UIButton    *powerButton;
    IBOutlet UIButton    *calculateButton;
    IBOutlet UIButton    *infoButton;
    IBOutlet UIStepper   *stepper;
    IBOutlet UILabel     *label;
    IBOutlet UITextField *fullText;
    IBOutlet UITextField *inputType;

    
}


//IBActions

-(IBAction)onClick:(id)sender;     //random screen selection

-(IBAction)switchInfoPage:(id)sender;

-(IBAction)powerSwitch:(UISwitch*)sender;//power calculator on or off

-(IBAction)onClickCalculator:(id)sender; //how many pages read in how many minutes

-(IBAction)stepper:(id)sender; //number of pages

-(IBAction)colorChange:(id)sender; //color change per group

@end
