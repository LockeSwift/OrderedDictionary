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
