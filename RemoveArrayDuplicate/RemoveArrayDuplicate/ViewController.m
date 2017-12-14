//
//  ViewController.m
//  RemoveArrayDuplicate
//
//  Created by 罗富中 on 2017/10/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int array[] = {1,1,2};
    int array2[] = {1,1,1,2,2,3};
    NSLog(@"new length = %d",removeArrDuplicate2(array2,6));
}

int removeArrDuplicate(int array[], int n){
    // 异常数据判断
    if(array == nil || n == 0) return 0;
    int index = 1;
    for(int i = 1;i < n; i++){
        if(array[i] != array[index-1])
            array[index++] = array[i];
    }
    for(int i = 0;i < index;i++){
        NSLog(@"array %d=%d",i,array[i]);
    }
    return index;
}
int removeArrDuplicate2(int array[], int n){
    int index = 2;
    for(int i = 2;i < n; i++){
        if(array[i] != array[index-2])
            array[index++] = array[i];
    }
    for(int i = 0;i < index;i++){
        NSLog(@"array %d=%d",i,array[i]);
    }
    return index;
}
@end
