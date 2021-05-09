//
//  main.m
//  SumCalculation
//
//  Created by Alex on 5/9/21.
//  Copyright © 2021 AlexCo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemsCollection.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"processing...");
        ItemsCollection *collection = [[ItemsCollection alloc] init];
        [collection processSeparateObjects];
        [collection processTableOfObjects];
    }
    return 0;
}
