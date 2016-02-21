//
//  ViewController.m
//  TippingCalculator
//
//  Created by akash kakumani on 2/21/16.
//  Copyright © 2016 akashkakumani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _costInput.center = CGPointMake( self.view.center.x , self.view.center.y - 150 );
    
    _TotalLabel.center = self.view.center;
    _TotalLabel.text = @"0";
    _TotalLabel.textAlignment = NSTextAlignmentCenter;
    
    NSLog(@"View Loads");

   
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillLayoutSubviews{
    NSLog(@"Laying Out Subviews");

    float bottom = self.view.frame.size.height;
    bottom = bottom - 100;
    
    float center = self.view.frame.size.width/5;
    float offset = center;
    
    _img1.center = CGPointMake(offset, bottom);
    
    center = center + offset;
    
    _img2.center = CGPointMake(center, bottom);
    
    center = center + offset;
    
    _img3.center = CGPointMake(center, bottom);
    
    center = center + offset;
    
    _img4.center = CGPointMake(center, bottom);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)devilClicked:(id)sender {
    NSLog(@"In Devil Clicked!");
    [self updateTotal:0.12];
    
    
}

- (IBAction)indifClicked:(id)sender {
     NSLog(@"Indif Clicked!");
    [self updateTotal:0.15];
   


}


- (IBAction)happyClicked:(id)sender {
    NSLog(@"Happy Clicked!");
    [self updateTotal:0.18];
    


}

- (IBAction)moneyClicked:(id)sender {
     NSLog(@"Money Clicked!");
    [self updateTotal:0.20];
   
    
}


-(void)updateTotal:(float)percentage{
    NSLog(@"Entered Update Total");

    NSString *input = _costInput.text;
    double value = [input doubleValue];
    if (value == 0){
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Invalid Input" message:@"Please enter a valid number" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];

        [self presentViewController:alertController animated:YES completion:nil];
        
        return;
        
    }
    
    double tip = value * percentage;
    double totalValue = tip + value;
    
    _TotalLabel.text = [NSString stringWithFormat:@"You should tip $%.2f \nYour total is: $%.2f",tip, totalValue];
    
}


@end
