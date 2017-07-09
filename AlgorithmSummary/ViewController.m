//
//  ViewController.m
//  AlgorithmSummary
//
//  Created by Hyyy on 2017/7/9.
//  Copyright © 2017年 hyyy. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Find.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray *dataSource;

@end

@implementation ViewController

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    BOOL isFound = [NSArray hy_findKeyword3:self.dataSource keywords:@9];
    NSLog(@"isFound == %d", isFound);
}

#pragma mark - Setter and Getter
- (NSArray *)dataSource {
    if (!_dataSource) {
        _dataSource = @[@[@1, @2, @8, @9], @[@2, @4, @9, @12], @[@4, @7, @10, @13], @[@6, @8, @11, @15]];
    }
    return _dataSource;
}

@end
