//
//  ViewController.m
//  ZigZag
//
//  Created by thanh tung on 11/12/15.
//  Copyright © 2015 thanh tung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    int duong = 5;
    
    int dong = 5;
    
    
    Boolean temp = false;
    
    for (int i = 0; i < dong; i++) {
        for( int j = 0; j < duong * (dong - 1) + 1; j++){
            for (int k = 1; k <= duong; k++){
                if (k%2 != 0) {
                    if ((j+i) == (dong - 1)*k || (j - i) == (dong - 1)*k) {
                        printf("*");
                        temp = true;
                        k = duong + 1;
                    }
                }
            }
            
            if (temp == false) {
                printf(" ");
            }
            temp = false;
            
        }
        printf("\n");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
