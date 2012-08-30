//
//  Portfolio.h
//  Stocks
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stocks;
}

-(float)valueOfPortfolio;
-(void)addStock:(StockHolding *)s;

@property NSMutableArray *stocks;

@end
