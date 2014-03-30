//
//  ViewController.m
//  Multiply
//
//  Created by Kelle Means on 3/10/14.
//  Copyright (c) 2014 Meansbiz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;


@property (weak, nonatomic) IBOutlet UISlider *myMultiplierSlider;
@property (strong, nonatomic) IBOutlet UIButton *resignButtonView;

@end

@implementation ViewController

-(IBAction)adjustMyMultiplier:(UISlider*) sender {
    self.myMultiplier.text = [NSString stringWithFormat:@"%d", (int)self.myMultiplierSlider.value];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)onCalculateButtonPressed:(id)sender {

    int number = [self.myNumber.text integerValue];
    int secondNumber = [self.myMultiplier.text integerValue];
    int result = number * secondNumber;
                  
    self.myAnswer.text = [NSString stringWithFormat:@"%d", result];
    
    if (result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
        
    }
    
-(IBAction)resignKeyboard:(id)sender{
    [self.view endEditing:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
