//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Alexander Pirsig on 31.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that we will use to get a path
// to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
    
}

-(void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
