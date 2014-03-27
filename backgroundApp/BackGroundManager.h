//
//  BackGroundManager.h
//  backgroundApp
//
//  Created by Mit on 3/5/14.
//  Copyright (c) 2014 Mit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BackGroundManager : NSObject

+(BackGroundManager*)sharedInstance;

- (void)applicationDidEnterBackground:(UIApplication *)application;
- (BOOL) checkFirst:(NSString *) string;
@end
