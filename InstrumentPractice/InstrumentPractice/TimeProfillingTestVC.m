//
//  TimeProfillingTestVC.m
//  InstrumentPractice
//
//  Created by i9400503 on 2019/10/7.
//  Copyright © 2019 BrilleShine. All rights reserved.
//

#import "TimeProfillingTestVC.h"

@interface TimeProfillingTestVC ()

@end

@implementation TimeProfillingTestVC
- (IBAction)StartTime:(id)sender {

    [self printResultWithOC];
    [self printResultWithC];
    [self printResultWithOterQueue];
    [self printResultWithMainQueue];

}

- (void)viewDidLoad {
    [super viewDidLoad];

}


#pragma mark print result use NSlog print
- (void) printResultWithOC
{
    double starttime = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < 10000; i++) {
        NSLog(@"==========> in loop : %d" , i);

    }
    double endtime = CFAbsoluteTimeGetCurrent();
    NSLog(@"current use NSLog Time  = %f" , endtime - starttime);
}

#pragma mark print result use printf (C) to print
- (void) printResultWithC
{
    double starttime = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < 10000; i++) {
        printf("==========> in loop : %d" , i);

    }
    double endtime = CFAbsoluteTimeGetCurrent();
    NSLog(@"current use printf Time  = %f" , endtime - starttime);
}

-(void) printResultWithOterQueue
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        double starttime = CFAbsoluteTimeGetCurrent();
        for (int i = 0; i < 10000; i++) {
            NSLog(@"==========> in loop : %d" , i);

        }
        double endtime = CFAbsoluteTimeGetCurrent();
        NSLog(@"current use Global Queue NSLog Time  = %f" , endtime - starttime);
    });
}

-(void) printResultWithMainQueue
{
    dispatch_async(dispatch_get_main_queue(), ^{
        double starttime = CFAbsoluteTimeGetCurrent();
        for (int i = 0; i < 10000; i++) {
            NSLog(@"==========> in loop : %d" , i);

        }
        double endtime = CFAbsoluteTimeGetCurrent();
        NSLog(@"current use Main Queue NSLog Time  = %f" , endtime - starttime);
    });
}


@end
