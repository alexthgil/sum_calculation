//
//  Item.h
//  SumCalculation
//
//  Created by Alex on 4/4/21.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, readonly) unsigned char counterValue;
- (instancetype)initWithCounter:(unsigned char)v;

@end

