//
//  StockHolding.m
//  Stocks
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

-(float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
