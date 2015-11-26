//
//  Number.m
//  ConverNumberToString
//
//  Created by thanh tung on 11/26/15.
//  Copyright © 2015 thanh tung. All rights reserved.
//

#import "Number.h"

@implementation Number
-(NSString*) sayString:(int)number{
    char digit [21][10] = { "", "one", "two", "three", "four", "five", "six", "seven",
        "eight", "nine", "ten", "eleven", "twelve", "thirteen",
        "fourteen", "fifteen", "sixteen", "seventeen", "eighteen",
        "nineteen"};
    char tens [11][10] = { "", "", "twenty", "thirty", "forty", "fifty", "sixty",
        "seventy", "eighty", "ninety"};
    char str[1000] = {0};
    int prev=0, div=1000;
    strcpy(str, "");
    
    while(div) {
        
        if ((number / div) % 10 > 0 || (div == 10 && (number%100) > 0)) {
            
            if (prev) {
                strcat(str, "and");
                prev = 0;
            }
            
            switch(div) {
                case 1000:
                    strcat(str, digit[(number / div) % 10]);
                    strcat(str, "thousand");
                    prev = 1;
                    break;
                case 100:
                    strcat(str, digit[(number / div) % 10]);
                    strcat(str, "hundred");
                    prev = 1;
                    break;
                case 10:
                    if ( (number%100) >= 10 && (number%100) <= 19)
                        strcat(str, digit[number%100]);
                    else {
                        strcat(str, tens[(number%100)/10]);
                        strcat(str, digit[number%10]);
                    }
                    break;
            }
        }
        
        div /= 10;
    }
    NSLog(@"%d : %s",number,str);
    return [NSString stringWithFormat:@"%s",str];
}
@end
