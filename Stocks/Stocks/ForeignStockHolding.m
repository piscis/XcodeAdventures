//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

-(float)costInDollars
{
    float normalCost = [super costInDollars];
    return normalCost * [self conversionRate];
}

-(float)valueInDollars
{
    float normalValue = [super valueInDollars];
    return normalValue * [self conversionRate];
}

@end
