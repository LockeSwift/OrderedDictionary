# OrderedDictionary
### 字典的有序化
#### 添加的类似NSMutableArray的方法
```
#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Ordered)

NS_ASSUME_NONNULL_BEGIN
@property (nonatomic, strong, readonly, nullable) NSMutableArray *keys;
//获取给定index的对象
- (id)objectAtIndex:(NSUInteger)index;
//插入键值对至给定index
- (void)insertObject:(id)anObject forKey:(id<NSCopying>)aKey atIndex:(NSUInteger)index;
//插入键值对至给定index
- (void)removeLastObject;
//移除最后一个键值对
- (void)removeObjectAtIndex:(NSUInteger)index;
//移除给定index的键值对
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
//插入键值对至给定indexes
- (void)insertObjects:(NSArray<id> *)objects keys:(NSArray<id <NSCopying>> *)keys atIndexes:(NSIndexSet *)indexes;
//移除给定indexes的键值对
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
//替换给定indexes的值
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray<id> *)objects;
NS_ASSUME_NONNULL_END

@end
```
#### 测试
##### 测试代码
```
NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"1" forKey:@"1"];
    [dic setObject:@"2" forKey:@"2"];
    [dic setObject:@"3" forKey:@"3"];
    [dic setObject:@"4" forKey:@"4"];
    [dic setObject:@"5" forKey:@"5"];
    NSLog(@"---添加后打印");
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---设置已经存在的键值对");
    [dic setObject:@"6" forKey:@"1"];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---替换键值对");
    [dic replaceObjectAtIndex:0 withObject:@"7"];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---插入键值对");
    [dic insertObject:@"8" forKey:@"3" atIndex:0];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---移除键值对");
    [dic removeObjectAtIndex:2];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---移除最后的键值对");
    [dic removeLastObject];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---插入组键值对");
    [dic insertObjects:@[@"9",@"10"] keys:@[@"9",@"10"] atIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---替换简直对");
    [dic replaceObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(3, 2)] withObjects:@[@"11", @"12"]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---删除组键值对");
    [dic removeObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)]];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
    //
    NSLog(@"---删除所有");
    [dic removeAllObjects];
    for (id key in dic.keys) {
        NSLog(@"key-value:%@-%@",key, [dic valueForKey:key]);
    }
    NSLog(@"-------------------------");
    NSLog(@"dic.keys:%@",dic.keys);
    NSLog(@"-------------------------");
    NSLog(@"dic:%@",dic);
    NSLog(@"-------------------------");
```
##### 测试结果
```
2017-03-17 16:58:44.572 OrderedMutableDictionary[2670:609743] ---添加后打印
2017-03-17 16:58:44.573 OrderedMutableDictionary[2670:609743] key-value:1-1
2017-03-17 16:58:44.573 OrderedMutableDictionary[2670:609743] key-value:2-2
2017-03-17 16:58:44.574 OrderedMutableDictionary[2670:609743] key-value:3-3
2017-03-17 16:58:44.574 OrderedMutableDictionary[2670:609743] key-value:4-4
2017-03-17 16:58:44.574 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:44.575 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:44.575 OrderedMutableDictionary[2670:609743] dic.keys:(
    1,
    2,
    3,
    4,
    5
)
2017-03-17 16:58:44.575 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:44.576 OrderedMutableDictionary[2670:609743] dic:{
    1 = 1;
    2 = 2;
    3 = 3;
    4 = 4;
    5 = 5;
}
2017-03-17 16:58:44.576 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:44.577 OrderedMutableDictionary[2670:609743] ---设置已经存在的键值对
2017-03-17 16:58:44.577 OrderedMutableDictionary[2670:609743] key-value:2-2
2017-03-17 16:58:47.359 OrderedMutableDictionary[2670:609743] key-value:3-3
2017-03-17 16:58:47.359 OrderedMutableDictionary[2670:609743] key-value:4-4
2017-03-17 16:58:47.359 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.359 OrderedMutableDictionary[2670:609743] key-value:1-6
2017-03-17 16:58:47.359 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.360 OrderedMutableDictionary[2670:609743] dic.keys:(
    2,
    3,
    4,
    5,
    1
)
2017-03-17 16:58:47.360 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.360 OrderedMutableDictionary[2670:609743] dic:{
    1 = 6;
    2 = 2;
    3 = 3;
    4 = 4;
    5 = 5;
}
2017-03-17 16:58:47.360 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.360 OrderedMutableDictionary[2670:609743] ---替换键值对
2017-03-17 16:58:47.361 OrderedMutableDictionary[2670:609743] key-value:2-7
2017-03-17 16:58:47.361 OrderedMutableDictionary[2670:609743] key-value:3-3
2017-03-17 16:58:47.369 OrderedMutableDictionary[2670:609743] key-value:4-4
2017-03-17 16:58:47.369 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.370 OrderedMutableDictionary[2670:609743] key-value:1-6
2017-03-17 16:58:47.370 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.370 OrderedMutableDictionary[2670:609743] dic.keys:(
    2,
    3,
    4,
    5,
    1
)
2017-03-17 16:58:47.370 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.371 OrderedMutableDictionary[2670:609743] dic:{
    1 = 6;
    2 = 7;
    3 = 3;
    4 = 4;
    5 = 5;
}
2017-03-17 16:58:47.371 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.371 OrderedMutableDictionary[2670:609743] ---插入键值对
2017-03-17 16:58:47.371 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.371 OrderedMutableDictionary[2670:609743] key-value:2-7
2017-03-17 16:58:47.372 OrderedMutableDictionary[2670:609743] key-value:4-4
2017-03-17 16:58:47.372 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.372 OrderedMutableDictionary[2670:609743] key-value:1-6
2017-03-17 16:58:47.372 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.373 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    2,
    4,
    5,
    1
)
2017-03-17 16:58:47.373 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.373 OrderedMutableDictionary[2670:609743] dic:{
    1 = 6;
    2 = 7;
    3 = 8;
    4 = 4;
    5 = 5;
}
2017-03-17 16:58:47.373 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.374 OrderedMutableDictionary[2670:609743] ---移除键值对
2017-03-17 16:58:47.374 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.375 OrderedMutableDictionary[2670:609743] key-value:2-7
2017-03-17 16:58:47.375 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.375 OrderedMutableDictionary[2670:609743] key-value:1-6
2017-03-17 16:58:47.376 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.376 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    2,
    5,
    1
)
2017-03-17 16:58:47.376 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.377 OrderedMutableDictionary[2670:609743] dic:{
    1 = 6;
    2 = 7;
    3 = 8;
    5 = 5;
}
2017-03-17 16:58:47.377 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.377 OrderedMutableDictionary[2670:609743] ---移除最后的键值对
2017-03-17 16:58:47.377 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.378 OrderedMutableDictionary[2670:609743] key-value:2-7
2017-03-17 16:58:47.378 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.381 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.381 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    2,
    5
)
2017-03-17 16:58:47.382 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.382 OrderedMutableDictionary[2670:609743] dic:{
    2 = 7;
    3 = 8;
    5 = 5;
}
2017-03-17 16:58:47.382 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.382 OrderedMutableDictionary[2670:609743] ---插入组键值对
2017-03-17 16:58:47.383 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.383 OrderedMutableDictionary[2670:609743] key-value:9-9
2017-03-17 16:58:47.383 OrderedMutableDictionary[2670:609743] key-value:10-10
2017-03-17 16:58:47.383 OrderedMutableDictionary[2670:609743] key-value:2-7
2017-03-17 16:58:47.383 OrderedMutableDictionary[2670:609743] key-value:5-5
2017-03-17 16:58:47.384 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.384 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    9,
    10,
    2,
    5
)
2017-03-17 16:58:47.384 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.385 OrderedMutableDictionary[2670:609743] dic:{
    10 = 10;
    2 = 7;
    3 = 8;
    5 = 5;
    9 = 9;
}
2017-03-17 16:58:47.385 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.385 OrderedMutableDictionary[2670:609743] ---替换简直对
2017-03-17 16:58:47.385 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] key-value:9-9
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] key-value:10-10
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] key-value:2-11
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] key-value:5-12
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.386 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    9,
    10,
    2,
    5
)
2017-03-17 16:58:47.387 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.387 OrderedMutableDictionary[2670:609743] dic:{
    10 = 10;
    2 = 11;
    3 = 8;
    5 = 12;
    9 = 9;
}
2017-03-17 16:58:47.387 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.388 OrderedMutableDictionary[2670:609743] ---删除组键值对
2017-03-17 16:58:47.388 OrderedMutableDictionary[2670:609743] key-value:3-8
2017-03-17 16:58:47.394 OrderedMutableDictionary[2670:609743] key-value:2-11
2017-03-17 16:58:47.395 OrderedMutableDictionary[2670:609743] key-value:5-12
2017-03-17 16:58:47.395 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.395 OrderedMutableDictionary[2670:609743] dic.keys:(
    3,
    2,
    5
)
2017-03-17 16:58:47.396 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.396 OrderedMutableDictionary[2670:609743] dic:{
    2 = 11;
    3 = 8;
    5 = 12;
}
2017-03-17 16:58:47.396 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.397 OrderedMutableDictionary[2670:609743] ---删除所有
2017-03-17 16:58:47.397 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.397 OrderedMutableDictionary[2670:609743] dic.keys:(
)
2017-03-17 16:58:47.398 OrderedMutableDictionary[2670:609743] -------------------------
2017-03-17 16:58:47.398 OrderedMutableDictionary[2670:609743] dic:{
}
2017-03-17 16:58:47.398 OrderedMutableDictionary[2670:609743] -------------------------
```
