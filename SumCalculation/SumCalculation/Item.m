//
//  Item.m
//  SumCalculation
//
//  Created by Alex on 4/4/21.
//

#import "Item.h"

@implementation Item

- (instancetype)initWithCounter:(unsigned char)v
{
    self = [super init];
    if (self) {
        _counterValue = v;
    }
    return self;
}

@end
