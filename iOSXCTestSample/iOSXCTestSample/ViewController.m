//
//  ViewController.m
//  iOSXCTestSample
//
//  Created by Shubhangi Pandya on 15/07/15.
//  Copyright (c) 2015 Shubhangi Pandya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reverseString:@"ABCDEFG"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)reverseString:(NSString *)string {
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[string length]];
    
    [string enumerateSubstringsInRange:NSMakeRange(0,[string length])
                                 options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                  [reversedString appendString:substring];
                              }];
    NSLog(@"%@",reversedString);
    return reversedString;
}

@end
