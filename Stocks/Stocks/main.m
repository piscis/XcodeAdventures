//
//  main.m
//  Stocks
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stockDepo = [NSMutableArray array];
        
        StockHolding *stock1 = [[StockHolding alloc ]init];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        [stockDepo addObject:stock1];
        
        StockHolding *stock2 = [[StockHolding alloc ]init];
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        [stockDepo addObject:stock2];
        
        StockHolding *stock3 = [[StockHolding alloc ]init];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        [stockDepo addObject:stock3];
        
        for(StockHolding *stock in stockDepo){
            NSLog(@"Cost In Dollars: %.2f | Value in Dollars: %.2f\n",[stock costInDollars], [stock valueInDollars]);
        }
    }
    return 0;
}

