//
//  NSArray+Find.m
//  AlgorithmSummary
//
//  Created by Hyyy on 2017/7/9.
//  Copyright © 2017年 hyyy. All rights reserved.
//

#import "NSArray+Find.h"

@implementation NSArray (Find)

+ (BOOL)hy_findKeyword1:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods {
    for (int i=0; i<array.count; i++) {
        NSArray *tempArr = array[i];
        for (int j=0; j < tempArr.count; j++) {
            NSNumber *number = tempArr[j];
            if ([number integerValue] == [keywrods integerValue]) {
                return YES;
            }
        }
    }
    return NO;
}

+ (BOOL)hy_findKeyword2:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods {
    NSInteger col = array[0].count;
    
    NSInteger i = 0;
    NSInteger j = col - 1;
    
    while (i<col-1 && j>=0) {
        NSNumber *tempValue = array[i][j];
        if ([tempValue integerValue] > [keywrods integerValue]) {
            // 如果该值大于关键值
            j--;
        }else if ([tempValue integerValue] < [keywrods integerValue]) {
            // 如果该值小于关键值
            i++;
        }else {
            return YES;
        }
    }
    return NO;
}

+ (BOOL)hy_findKeyword3:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods {
    NSInteger row = array[0].count;
    
    NSInteger i = row - 1;
    NSInteger j = 0;
    
    while (i>=0 && j<row-1) {
        NSNumber *tempValue = array[i][j];
        if ([tempValue integerValue] > [keywrods integerValue]) {
            // 如果该值大于关键值
            i--;
        }else if ([tempValue integerValue] < [keywrods integerValue]) {
            // 如果该值小于关键值
            j++;
        }else {
            return YES;
        }
    }
    return NO;
}

@end
