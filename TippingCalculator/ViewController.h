//
//  ViewController.h
//  TippingCalculator
//
//  Created by akash kakumani on 2/21/16.
//  Copyright © 2016 akashkakumani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *img1;
@property (weak, nonatomic) IBOutlet UIButton *img2;
@property (weak, nonatomic) IBOutlet UIButton *img3;
@property (weak, nonatomic) IBOutlet UIButton *img4;

@property (weak, nonatomic) IBOutlet UITextField *costInput;
@property (weak, nonatomic) IBOutlet UILabel *TotalLabel;

- (IBAction)devilClicked:(id)sender;
- (IBAction)indifClicked:(id)sender;
- (IBAction)moneyClicked:(id)sender;
- (IBAction)happyClicked:(id)sender;


@end

