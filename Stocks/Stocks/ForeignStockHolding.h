//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;

@end
