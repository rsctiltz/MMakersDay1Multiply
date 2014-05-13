//
//  ViewController.m
//  Multiply
//
//  Created by Ryan Tiltz on 5/12/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplication;
@property (strong, nonatomic) IBOutlet UILabel *myEqual;


@end

@implementation ViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    NSInteger number = [self.myNumber.text integerValue];
    NSInteger multiple = [self.myMultiplier.text integerValue];
    NSInteger result = number * multiple;
    NSString *stringValue = [NSString stringWithFormat:@"%d", result];

    if (result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }else {self.view.backgroundColor = [UIColor whiteColor];}


    if (result % 3 == 0 && result % 5 == 0) {
        self.myAnswer.text = @"fizzbuzz";
    } else if (result % 3 == 0) {
        self.myAnswer.text = @"fizz";
    } else if (result % 5 == 0) {
        self.myAnswer.text = @"buzz";
    } else {
        self.myAnswer.text = stringValue;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end