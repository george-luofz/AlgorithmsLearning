//
//  Bag.m
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "Bag.h"
#import "Node.h"
@implementation Bag

- (BOOL)isEmpty{
    return _N == 0;
}

- (int)size{
    return _N;
}

- (void)add:(id)item{
    Node *node = [Node new];
    node.item = item;
    node.next = _first;
    _first = node;
}
@end
