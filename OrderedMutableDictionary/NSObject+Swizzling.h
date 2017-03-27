//
//  NSObject+Swizzling.h
//  OrderedMutableDictionary
//
//  Created by Locke on 2017/3/17.
//  Copyright © 2017年 lainkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (Swizzling)

/**
 Method Swizzling
 Class class = NSClassFromString(@"__NSDictionaryM");//✅
 Class class = objc_getClass("__NSDictionaryM");//✅
 Class class = object_getClass(@"__NSDictionaryM");//❌ Returns the class of an object.
Example:
 [objc_getClass("__NSDictionaryM") swizzlingMethod:@selector(setObject:forKey:) swizzledSelector:@selector(swizzled_setObject:forKey:)];
 */
- (void)swizzlingInstanceMethod:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector;

@end
