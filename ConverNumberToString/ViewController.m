//
//  ViewController.m
//  ConverNumberToString
//
//  Created by thanh tung on 11/26/15.
//  Copyright © 2015 thanh tung. All rights reserved.
//

#import "ViewController.h"
#import "Number.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Number* num = [[Number alloc]init];
    int arrNum[6] = {1,2,3,4,5,6};
    NSMutableArray* stringArray = [[NSMutableArray alloc] init];
    for(int i=0; i<6; i++){
        [stringArray addObject: [num sayString:arrNum[i]]];
    }
    NSLog(@"%@",stringArray);
}



@end
