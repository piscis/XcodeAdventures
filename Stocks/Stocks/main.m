//
//  main.m
//  Stocks
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Portfolio *portfolio = [[Portfolio alloc]init];
        
        StockHolding *stock1 = [[StockHolding alloc ]init];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        [portfolio addStock:stock1];
        
        StockHolding *stock2 = [[StockHolding alloc ]init];
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        [portfolio addStock:stock2];
        
        StockHolding *stock3 = [[StockHolding alloc ]init];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        [portfolio addStock:stock3];
        
        
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc ]init];
        [stock4 setPurchaseSharePrice:2.3];
        [stock4 setCurrentSharePrice:4.5];
        [stock4 setNumberOfShares:40];
        [stock4 setConversionRate: 0.94];
        [portfolio addStock:stock4];
        
        
        NSLog(@"Portfolio value: %.2f dollar",[portfolio valueOfPortfolio]);
        
        /*
        for(StockHolding *stock in stockDepo){
            NSLog(@"Cost In Dollars: %.2f | Value in Dollars: %.2f\n",[stock costInDollars], [stock valueInDollars]);
        }
         */
    }
    return 0;
}

