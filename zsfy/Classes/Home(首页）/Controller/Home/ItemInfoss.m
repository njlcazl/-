//
//  ItemInfoss.m
//  zsfy
//
//  Created by Apple on 16/1/31.
//  Copyright © 2016年 wzy. All rights reserved.
//

#import "ItemInfoss.h"
#import <objc/runtime.h>
@interface NSObject(KVC)
- (id)valueForUndefinedKey:(NSString *)key;
- (void)setValue:(id)value forUndefinedKey:(NSString *)key;
@end

@implementation ItemInfoss

- (id)valueForUndefinedKey:(NSString *)key{
    return objc_getAssociatedObject(self,(__bridge const void *)(key));
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if([value isKindOfClass:[NSString class]])
    {
        objc_setAssociatedObject(self,(__bridge const void *)(key),value,OBJC_ASSOCIATION_COPY_NONATOMIC);
    }else
    {
        objc_setAssociatedObject(self,(__bridge const void *)(key),value,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    [super setValue:value forKey:key];
}



@end
