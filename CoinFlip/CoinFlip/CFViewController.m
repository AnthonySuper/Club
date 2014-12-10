//
//  CFViewController.m
//  CoinFlip
//
//  Created by Programming on 11/12/14.
//  Copyright (c) 2014 Programming. All rights reserved.
//

#import "CFViewController.h"
#include "CFHelper.h"
@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton:(id)sender {
    if(flip_coin()){
        _ourLabel.text = @"Heads";
    }
    else{
        _ourLabel.text = @"Tails";
    }
}
@end
