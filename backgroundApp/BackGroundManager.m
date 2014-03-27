//
//  BackGroundManager.m
//  backgroundApp
//
//  Created by Mit on 3/5/14.
//  Copyright (c) 2014 Mit. All rights reserved.
//

#import "BackGroundManager.h"

static BackGroundManager *_backInstance=nil;
@implementation BackGroundManager

+(BackGroundManager*)sharedInstance
{
    if (!_backInstance) {
        _backInstance=[[BackGroundManager alloc] init];
    }
    return _backInstance;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    while (1) {
        sleep(5);
        //progress anything
    }

    [[UIApplication sharedApplication] setKeepAliveTimeout:600 handler:^{
        NSLog(@"KeepAlive");
    }];
}

- (BOOL) checkFirst:(NSString *) string
{
    NSString *str = [string substringToIndex:1];
    NSRange r = [@"ABCDEFGHIJKLMNOPQRSTUVWXWZ" rangeOfString:str];
    
    if (r.length > 0) {
        return YES;
    }
    return NO;
}

- (BOOL) checkSystemProccess:(NSString *) proName
{
    NSMutableArray *systemprocessArray = [NSMutableArray arrayWithObjects:
                           @"kernel_task",
                           @"launchd",
                           @"UserEventAgent",
                           @"wifid",
                           @"syslogd",
                           @"powerd",
                           @"lockdownd",
                           @"mediaserverd",
                           @"mediaremoted",
                           @"mDNSResponder",
                           @"locationd",
                           @"imagent",
                           @"iapd",
                           @"fseventsd",
                           @"fairplayd.N81",
                           @"configd",
                           @"apsd",
                           @"aggregated",
                           @"SpringBoard",
                           @"CommCenterClassi",
                           @"BTServer",
                           @"notifyd",
                           @"MobilePhone",
                           @"ptpd",
                           @"afcd",
                           @"notification_pro",
                           @"notification_pro",
                           @"syslog_relay",
                           @"notification_pro",
                           @"springboardservi",
                           @"atc",
                           @"sandboxd",
                           @"networkd",
                           @"lsd",
                           @"securityd",
                           @"lockbot",
                           @"installd",
                           @"debugserver",
                           @"amfid",
                           @"AppleIDAuthAgent",
                           @"BootLaunch",
                           @"MobileMail",
                           @"BlueTool",
                           nil];

    
    if ([systemprocessArray containsObject:proName]) {
        return YES;
    }
    return NO;
}


@end
