# OrderedDictionary
有序字典
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
