//
//  ViewController.m
//  TipCalculator
//
//  Created by Alex on 2015-06-19.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    double billValue = [self.billAmountTextField.text doubleValue];
    
    double tipPercentage = [self.tipPercentage.text doubleValue]/100;
    
    NSNumberFormatter *numberFormat = [[NSNumberFormatter alloc] init];
    NSNumber *billValueAsNSNumber = [numberFormat numberFromString:self.billAmountTextField.text];
    NSNumber *tipPercentageAsNSNumber = [numberFormat numberFromString:self.tipAmountLabel.text];
    float finalNumber = 0;
   
    if(billValueAsNSNumber && tipPercentageAsNSNumber) {
        
        finalNumber = billValue * tipPercentage;
        NSNumber *finalNSNumber = [NSNumber numberWithFloat:finalNumber];
        
        [numberFormat setNumberStyle:NSNumberFormatterDecimalStyle];
        [numberFormat  setMaximumFractionDigits:2];
        [numberFormat setNumberStyle:NSNumberFormatterCurrencyStyle];
        
        NSString *finalString = [numberFormat stringFromNumber:finalNSNumber];
        self.tipAmountLabel.text = finalString;

    }
    else {
        self.tipAmountLabel.text = @"Please enter a real number for tip percentage and bill amount.";
    }

}



@end
