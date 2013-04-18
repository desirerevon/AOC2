//
//  ViewController.m
//  testApp
//
//  Created by Desire Gardner on 4/10/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//Setting Up Labels/////////////////////////////////////////////////////////////////////

    //Adult Title Label
    textViewOne = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 80.0f)];
    if(textViewOne != nil)
    {
        textViewOne.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        //textViewOne.text = @"Adult Book";
        textViewOne.textColor =[UIColor whiteColor];
        textViewOne.textAlignment = NSTextAlignmentCenter;
        textViewOne.numberOfLines = 2;
    }
    [self.view addSubview:textViewOne];
    
    //Kid Title Label
    textViewTwo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 170.0f, 300.0f, 80.0f)];
    if(textViewTwo != nil)
    {
        textViewTwo.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        //textViewTwo.text = @"Kid Book";
        textViewTwo.textColor = [UIColor whiteColor];
        textViewTwo.textAlignment = NSTextAlignmentCenter;
        textViewTwo.numberOfLines = 2;
    }
    [self.view addSubview:textViewTwo];
    
    //Child Label
    textViewThree = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 330.0f, 300.0f, 80.0f)];
    if(textViewThree != nil)
    {
        textViewThree.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        //textViewThree.text = @"Child Book";
        textViewThree.textColor = [UIColor whiteColor];
        textViewThree.textAlignment = NSTextAlignmentCenter;
        textViewThree.numberOfLines = 2;
    }
    [self.view addSubview:textViewThree];

//Return Data Labels//////////////////////////////////////////////////////////////////////////
    
    //Adult Information Label
    oneInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 90.0f, 300.0f, 55.0f)];
    if (oneInfo != nil)
    {
        oneInfo.backgroundColor = [UIColor  colorWithRed:0.84 green:0.29 blue:0.95 alpha:1.0];//#d649
        oneInfo.textAlignment = NSTextAlignmentCenter;
        oneInfo.numberOfLines = 2;
    }
    [self.view addSubview:oneInfo];
    
    //Kid Information Label
    twoInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 240.0f, 300.0f, 55.0f)];
    if (twoInfo != nil);
    {
        twoInfo.backgroundColor = [UIColor  colorWithRed:0.00 green:0.44 blue:1.00 alpha:1.0];//blue
        twoInfo.textAlignment = NSTextAlignmentCenter;
        twoInfo.numberOfLines = 2;
    }
    [self.view addSubview:twoInfo];
    
    //Child information Label
    threeInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 400.0f, 300.0f, 55.0f)];
    if (threeInfo != nil)
    {
        threeInfo.backgroundColor = [UIColor  colorWithRed:0.18 green:0.72 blue:0.13 alpha:1.0];//green
        threeInfo.textAlignment = NSTextAlignmentCenter;
        threeInfo.numberOfLines = 2;
    }
    [self.view addSubview:threeInfo];

//Create Book Type : Adult, Kid and Child///////////////////////////////////////////////////////////////
    
    //Adult Return
    adultBook *adultB = (adultBook*)[bookFactory createNewBook:ADULT];
    [adultB setPages:50];
    [adultB setTimePerPage:2];
    [adultB setBreakTime:5];
    if(adultB != nil)
    {
        NSArray *aBooks = [[NSArray alloc]initWithObjects:@"Learning ObjC, Java, Javascript", nil];
        NSMutableString *book = [[NSMutableString alloc]initWithString:@""];
        for (int i=0; i<[aBooks count]; i++)
        {
        
            [book insertString:([aBooks objectAtIndex:0]) atIndex:0];
        }
                                
        [adultB setList:aBooks];
        
        [adultB calculateReadTime];
        textViewOne.text  = [NSMutableString stringWithFormat:@"Please choose a book %@", book];
        oneInfo.text = [NSString stringWithFormat:@"The pages you read were %i in %i minutes and took a break.", adultB.pages, adultB.readTimeMinutes];
        
    }
    
    //Kid Return
    kidBook *kidB = (kidBook*)[bookFactory createNewBook:KID];
    [kidB setPages:2];
    [kidB setReadTimeMinutes:5];
    if (kidB != nil)
    {
        NSArray *kbooks = [[NSArray alloc]initWithObjects:@"Diary of a Wimpy Kid, Harry Potter, Warriors", nil];
        NSMutableString *list = [[NSMutableString alloc]initWithString:@""];
        for (int i=0; i<[kbooks count]; i++)
        {
            [list insertString:([kbooks objectAtIndex:0]) atIndex:0];
        }
        [kidB setList:kbooks];
        
        [kidB calculateReadTime];
        textViewTwo.text = [NSString stringWithFormat:@"Please choose a book %@", list];
        twoInfo.text = [NSString stringWithFormat:@"You read %i pages for %i minutes with a total of %i minutes per page.", kidB.pages, kidB.timePerPage, kidB.readTimeMinutes];
         
    }
    
    //Child Return
    childBook *childB = (childBook*)[bookFactory createNewBook:CHILD];
    [childB setPages:10];
    [childB setTimePerPage:9];
    if (childB != nil)
    {
        NSArray *cbooks = [[NSArray alloc]initWithObjects:@"Cat in the Hat, Wocket in my pocket, ABC's", nil];
        NSMutableString *list = [[NSMutableString alloc]initWithString:@""];
        for(int i=0; i<[cbooks count]; i++)
        {
            [list insertString:([cbooks objectAtIndex:0]) atIndex:0];
        }
        [childB setList:cbooks];
        
        [childB calculateReadTime];
        textViewThree.text = [NSString stringWithFormat:@"Please choose a book %@", list];
        threeInfo.text = [NSString stringWithFormat:@"The pages you read were %i in %i total minutes.", childB.pages, childB.totalReadTime];

              
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
