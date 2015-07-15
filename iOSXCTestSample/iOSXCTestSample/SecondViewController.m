//
//  SecondViewController.m
//  iOSXCTestSample
//
//  Created by Suresh Varma on 15/07/15.
//  Copyright (c) 2015 Shubhangi Pandya. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSInteger phone = [self splitNumberFromString:@"ABCD1234"];
    NSLog(@"Phone= %ld", phone);

}

- (NSInteger)splitNumberFromString:(NSString *)string {
    NSCharacterSet *desiredCharacters = [NSCharacterSet decimalDigitCharacterSet];
    NSString *text = @"";
    
    for ( int i = 0; i < [string length]; i++) {
        unichar currentCharacter = [string characterAtIndex:i];
        if ([desiredCharacters characterIsMember:currentCharacter]) {
            unichar chara = [string characterAtIndex:i];
            text = [NSString stringWithFormat:@"%@%c", text, chara];
        }
    }
    return [text integerValue];
}

@end
