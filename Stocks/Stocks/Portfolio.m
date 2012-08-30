//
//  Portfolio.m
//  Stocks
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

@synthesize stocks;


-(void)addStock:(StockHolding *)s
{
    if(!stocks){
        stocks = [[NSMutableArray alloc]init];
    }
    
    [stocks addObject:s];
}

-(float)valueOfPortfolio
{
    float sum = 0;
    
    for(StockHolding *stock in [self stocks]){
        sum += [stock valueInDollars];
    }
    
    return sum;
}

@end
