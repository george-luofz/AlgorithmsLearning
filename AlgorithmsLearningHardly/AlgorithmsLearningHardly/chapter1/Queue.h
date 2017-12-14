//
//  Queue.h
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Node;
@interface Queue : NSObject
@property Node   *first;
@property Node   *last;
@property int    N;

- (BOOL)isEmpty;
- (int)size;
- (void)enQueue:(id)item;
- (id)deQueue;

@end
