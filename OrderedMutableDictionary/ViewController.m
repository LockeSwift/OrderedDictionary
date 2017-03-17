//
//  ViewController.m
//  OrderedMutableDictionary
//
//  Created by Locke on 2017/3/17.
//  Copyright © 2017年 lainkai. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableDictionary+Ordered.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"1" forKey:@"1"];
    [dic setObject:@"2" forKey:@"2"];
    [dic setObject:@"3" forKey:@"3"];
    [dic setObject:@"4" forKey:@"4"];
    [dic setObject:@"5" forKey:@"5"];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //设置已经存在的键值对
    [dic setObject:@"6" forKey:@"1"];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //替换键值对
    [dic replaceObjectAtIndex:0 withObject:@"7"];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //插入键值对
    [dic insertObject:@"8" forKey:@"3" atIndex:0];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //移除键值对
    [dic removeObjectAtIndex:2];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //移除最后的键值对
    [dic removeLastObject];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //插入组键值对
    [dic insertObjects:@[@"9",@"10"] keys:@[@"9",@"10"] atIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //替换简直对
    [dic replaceObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(3, 2)] withObjects:@[@"11", @"12"]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //删除组键值对
    [dic removeObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //删除所有
    [dic removeAllObjects];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
