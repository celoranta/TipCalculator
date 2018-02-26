//
//  ViewController.m
//  TipCalculator
//
//  Created by Chris Eloranta on 2018-02-23.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ViewController.h"
#import "CLECalcButton.h"
#import "CLEBillField.h"
#import "CLETipInputField.h"


@interface ViewController ()

@property (strong, nonatomic) NSString* tipTextString;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (nonatomic) NSString * billAmountTextField;

@property (weak, nonatomic) IBOutlet CLEBillField *billAmountField;



@end

@implementation ViewController

- (IBAction)inputBillAmount:(id)sender {
//   if([sender i)
    NSLog(@"Input happened.");

}
- (IBAction)inputTipPercentage:(id)sender {
    self.tipAmount = self.billAmount * self.tipPercentage;
    
}

- (IBAction)pressCalculateButton:(id)sender {
    [self publishTipOutputString];
    //remove keyboard text
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipPercentage = (float)0.15;
    self.billAmount = (float)0.00;
    [self publishTipOutputString];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)publishTipOutputString
{
    self.tipAmount =  self.billAmount*self.tipPercentage;
    NSString* tipOutputString = [[NSString alloc]initWithFormat:@"$%.2f",self.tipAmount];
    self.tipAmountLabel.text = tipOutputString;
}




@end
