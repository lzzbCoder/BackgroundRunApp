//
//  MITViewController.m
//  backgroundApp
//
//  Created by Mit on 3/5/14.
//  Copyright (c) 2014 Mit. All rights reserved.
//

#import "MITViewController.h"
#import "ProccessHelper.h"
#import <objc/runtime.h>
@interface MITViewController ()

@end

@implementation MITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *array=[ProccessHelper runningProcesses];
    NSLog(@"%@",array);
    UIApplication *app=[UIApplication sharedApplication];
    [key subviews]
    //objc_property_t * class_copyPropertyList(Class cls, unsigned int *outCount)
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
