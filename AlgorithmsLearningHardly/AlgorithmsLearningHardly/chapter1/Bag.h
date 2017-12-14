//
//  Bag.h
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Node;
@interface Bag : NSObject
@property Node   *first;
@property int    N;

- (BOOL)isEmpty;
- (int)size;
- (void)add:(id)item;

@end
