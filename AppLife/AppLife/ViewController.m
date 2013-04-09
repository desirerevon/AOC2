//
//  ViewController.m
//  AppLife
//
//  Created by Desire Gardner on 4/9/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    textLabel.text = @"Hello World";
    [self.view addSubview:textLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
