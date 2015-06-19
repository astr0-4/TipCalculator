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
    
    NSNumber *billValu

    double billValue = [self.billAmountTextField.text doubleValue];
    double tipPercentage = [self.tipPercentage.text doubleValue]/100;
    self.tipAmountLabel.text = [NSString stringWithFormat: @"%f", billValue *tipPercentage];
}



@end
