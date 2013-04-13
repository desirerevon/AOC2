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
    textViewOne = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
    if(textViewOne != nil)
    {
        textViewOne.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        textViewOne.text = @"Adult Book";
        textViewOne.textColor =[UIColor whiteColor];
        textViewOne.textAlignment = NSTextAlignmentCenter;
        textViewOne.numberOfLines = 2;
    }
    [self.view addSubview:textViewOne];
    
    //Kid Title Label
    textViewTwo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 150.0f, 300.0f, 20.0f)];
    if(textViewTwo != nil)
    {
        textViewTwo.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        textViewTwo.text = @"Kid Book";
        textViewTwo.textColor = [UIColor whiteColor];
        textViewTwo.textAlignment = NSTextAlignmentCenter;
        textViewTwo.numberOfLines = 2;
    }
    [self.view addSubview:textViewTwo];
    
    //Child Label
    textViewThree = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 290.0f, 300.0f, 20.0f)];
    if(textViewThree != nil)
    {
        textViewThree.backgroundColor = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];//#ff9900
        textViewThree.text = @"Child Book";
        textViewThree.textColor = [UIColor whiteColor];
        textViewThree.textAlignment = NSTextAlignmentCenter;
        textViewThree.numberOfLines = 2;
    }
    [self.view addSubview:textViewThree];

//Return Data Labels//////////////////////////////////////////////////////////////////////////
    
    //Adult Information Label
    oneInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 60.0f, 300.0f, 50.0f)];
    if (oneInfo != nil)
    {
        oneInfo.backgroundColor = [UIColor  colorWithRed:0.84 green:0.29 blue:0.95 alpha:1.0];//#d649
        oneInfo.text = @"Adult Book Information";
        oneInfo.textAlignment = NSTextAlignmentCenter;
        oneInfo.numberOfLines = 2;
    }
    [self.view addSubview:oneInfo];
    
    //Kid Information Label
    twoInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 190.0f, 300.0f, 55.0f)];
    if (twoInfo != nil);
    {
        twoInfo.backgroundColor = [UIColor  colorWithRed:0.00 green:0.44 blue:1.00 alpha:1.0];//blue
        twoInfo.text = @"Kid Book Information";
        twoInfo.textAlignment = NSTextAlignmentCenter;
        twoInfo.numberOfLines = 2;
    }
    [self.view addSubview:twoInfo];
    
    //Child information Label
    threeInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 350.0f, 300.0f, 55.0f)];
    if (threeInfo != nil)
    {
        threeInfo.backgroundColor = [UIColor  colorWithRed:0.18 green:0.72 blue:0.13 alpha:1.0];//green
        threeInfo.text = @"Child Book Information";
        threeInfo.textAlignment = NSTextAlignmentCenter;
        threeInfo.numberOfLines = 2;
    }
    [self.view addSubview:threeInfo];

//Create Book Type : Adult, Kid and Child///////////////////////////////////////////////////////////////
    
    //Adult Return
    adultBook *adultB = (adultBook*)[bookFactory createNewBook:ADULT];
    [adultB setPages:100];
    [adultB setReadTimePerPage:2];
    if(adultB != nil)
    {
        NSArray *abookList = [[NSArray alloc]initWithObjects:@"Learning ObjC, Java or Javascript", nil];
        NSMutableString *list = [[NSMutableString alloc]initWithString:@""];
        for(int i=0; i<[abookList count]; i++)
        {
        
            [list insertString:([abookList objectAtIndex:0]) atIndex:0];
        }
                                
        [adultB setBookList:abookList];
        
        [adultB calculateReadTime];
        textViewOne  = [NSMutableString stringWithFormat:@"Please choose a book one of these books %@", list];
        oneInfo.text = [NSString stringWithFormat:@"The pages you read were %i in %i minutes.", adultB.pages, adultB.readTimeInMinutes];
        
    }
    
    //Kid Return
    kidBook *kidB = (kidBook*)[bookFactory createNewBook:KID];
    [kidB setNumOfBooks:2];
    [kidB setReadTimePerBook:5];
    if (kidB != nil)
    {
        NSArray *kbookList = [[NSArray alloc]initWithObjects:@"Diary of a Wimpy Kid, Harry Potter, Warriors", nil];
        NSMutableString *list = [[NSMutableString alloc]initWithString:@""];
        for(int i=0; i<[kbookList count]; i++)
        {
            [list insertString:([kbookList objectAtIndex:0]) atIndex:0];
        }
        [kidB setBookList:kbookList];
        
        [kidB calculateReadTime];
        textViewTwo = [NSString stringWithFormat:@"Please choose a book one of these books %@", list];
        twoInfo.text = [NSString stringWithFormat:@"You read %i books in %i minutes.", kidB.numOfBooks, kidB.readTimeInMinutes];
         
    }
    
    //Child Return
    childBook *childB = (childBook*)[bookFactory createNewBook:CHILD];
    [childB setTimePerPage:2];
    [childB setReadTimeInMinutes:10];
    if (childB != nil)
    {
        NSArray *cbookList = [[NSArray alloc]initWithObjects:@"Cat in the Hat, Wocket in my pocket, ABC's", nil];
        NSMutableString *list = [[NSMutableString alloc]initWithString:@""];
        for(int i=0; i<[cbookList count]; i++)
        {
            [list insertString:([cbookList objectAtIndex:0]) atIndex:0];
        }
        [childB setBookList:cbookList];
        
        [childB calculateReadTime];
        textViewThree = [NSString stringWithFormat:@"Please choose a book one of these books %@", list];
        threeInfo.text = [NSString stringWithFormat:@"Your total pages were %i.", childB.pages];

              
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
