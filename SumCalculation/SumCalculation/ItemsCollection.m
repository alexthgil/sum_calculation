//
//  ItemCollection.m
//  SumCalculation
//
//  Created by Alex on 4/4/21.
//

#import "ItemsCollection.h"

@interface ItemsCollection()

@property int itemsCount;

@end

@implementation ItemsCollection

- (instancetype)init
{
    self = [super init];
    if (self) {
        _itemsCount = 65432165; 
    }
    return self;
}

- (void)processSeparateObjects {
    NSMutableArray<Item *> *items = [[NSMutableArray<Item *> alloc] init];

    for (int i = 0; i < self.itemsCount; i++) {
        Item *item = [[Item alloc] initWithCounter:1];
        [items addObject:item];
    }
    
    NSDate *rT = [[NSDate alloc] init];
    unsigned long long sum = [ItemsCollection calculateSumForItems:items];
    NSDate *cT = [[NSDate alloc] init];
    NSLog(@"Variant 1: sum of separate objects: %lli duration: %f", sum, [cT timeIntervalSinceDate:rT]);
}

- (void)processTableOfObjects {
    unsigned char *tablePtr = malloc(self.itemsCount * sizeof(unsigned char));
    if (tablePtr != NULL) {
        for (int i = 0; i < self.itemsCount; i++) {
            *(tablePtr + i) = 1;
        }
        
        NSDate *rT = [[NSDate alloc] init];
        unsigned long long sum = [ItemsCollection calculateSumForData:tablePtr count:self.itemsCount];
        NSDate *cT = [[NSDate alloc] init];
        NSLog(@"Variant 2: sum of table: %lli duration: %f", sum, [cT timeIntervalSinceDate:rT]);
        free(tablePtr);
    }
}

+ (unsigned long long)calculateSumForItems:(NSArray<Item *> *)items {
    
    unsigned long long sum = 0;
    
    for (Item *item in items) {
        sum += item.counterValue;
    }
    
    return sum;
}

+ (unsigned long long)calculateSumForData:(unsigned char *)firstCounterValuePtr count:(int)count {
    
    unsigned long long sum = 0;
    
    for (int i = 0; i < count; i++) {
        sum += *(firstCounterValuePtr + i);
    }
    
    return sum;
}

@end
