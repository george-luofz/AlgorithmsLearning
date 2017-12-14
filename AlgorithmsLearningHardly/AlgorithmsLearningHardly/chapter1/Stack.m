//
//  Stack.m
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "Stack.h"
#import "Node.h"
@implementation Stack

- (BOOL)isEmpty{
    return _N == 0;
}
- (int)size{
    return _N;
}
- (void)push:(id)item{
    // 使用表头结点可以push/pop；表尾结点只能push
    Node *oldFirst = _first;
    Node *node = [Node new];
    node.item = item;
    node.next = oldFirst;
    _N++;
    _first = node;
}

- (id)pop{
    id value = _first.item;
    _first = _first.next;
    --_N;
    return value;
}
@end

