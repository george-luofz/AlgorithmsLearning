//
//  Chapter1ViewController.m
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "Chapter1ViewController.h"
#import "Stack.h"
#import "Queue.h"
@interface Chapter1ViewController ()

@end

@implementation Chapter1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test_stack];
    [self test_queue];
}
#pragma mark - stack
- (void)test_stack{
    Stack *stack = [Stack new];
    for(int i = 0 ;i < 10 ;i++){
        [stack push:@(i)];
    }
    
    NSLog(@"stack n=%d",stack.N);
    NSLog(@"pop:%@",[stack pop]);
    NSLog(@"stack n=%d",stack.N);
    
}
- (void)test_queue{
    Queue *queue = [Queue new];
    for(int i = 0 ;i < 10 ;i++){
        [queue enQueue:@(i)];
    }
    
    NSLog(@"queue n=%d",queue.N);
    NSLog(@"dequeue:%@",[queue deQueue]);
    NSLog(@"dequeue n=%d",queue.N);
}
@end
