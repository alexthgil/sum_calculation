//
//  ItemCollection.h
//  SumCalculation
//
//  Created by Alex on 4/4/21.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface ItemsCollection : NSObject

+ (unsigned long long)calculateSumForItems:(NSArray<Item *> *)items;
+ (unsigned long long)calculateSumForData:(unsigned char *)firstCounterValuePtr count:(int)count;

- (void)processSeparateObjects;
- (void)processTableOfObjects;

@end

