//
//  Queue.m
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "Queue.h"
#import "Node.h"
@implementation Queue

- (int)size{
    return _N;
}
- (BOOL)isEmpty{
    return _N == 0;
}

- (void)enQueue:(id)item{
    Node *node = [Node new];
    node.item = item;
    node.next = nil;
    _last.next = node;
    _last = node;
    if([self isEmpty]){
        _first = node;
    }
    _N++;
//    if(_N == 1){
//        _first = node;
//        _last = node;
//        return;
//    }
//    node.next = _last;
//    _last = node;
    
}

- (id)deQueue{
    if([self isEmpty]) return nil;
    // 先进先出；使用表头指针[X]
    id value = _first.item;
    _first = _first.next;
    _N--;
    if([self isEmpty]){
        _last = nil;
    }
    return value;
}
@end
