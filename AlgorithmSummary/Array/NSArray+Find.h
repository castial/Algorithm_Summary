//
//  NSArray+Find.h
//  AlgorithmSummary
//
//  Created by Hyyy on 2017/7/9.
//  Copyright © 2017年 hyyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Find)

/**
 在二维数组中查找某个关键元素。解法1: 用两个循环遍历该数组，然后进行对比。
 */
+ (BOOL)hy_findKeyword1:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods;

/**
 在二维数组中查找某个关键元素。解法2: 从右上角出发，如果该元素比它大。则删掉那一列；如果比它小，则删掉那一行，等于则直接返回。
 */
+ (BOOL)hy_findKeyword2:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods;

/**
 在二维数组中查找某个关键元素。解法3: 从左下角出发，如果该元素比它大。则删掉那一行；如果比它小，则删掉那一列，等于则直接返回。
 */
+ (BOOL)hy_findKeyword3:(NSArray<NSArray<NSNumber *> *> *)array keywords:(NSNumber *)keywrods;

@end
