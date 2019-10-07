//
//  MemoryGraphDebugger.m
//  InstrumentPractice
//
//  Created by i9400503 on 2019/10/7.
//  Copyright © 2019 BrilleShine. All rights reserved.
//

#import "MemoryGraphDebugger.h"

@interface MemoryGraphDebugger (){

}

@end

@implementation MemoryGraphDebugger

- (IBAction)CreateLeakGraph:(id)sender {


    NSArray *infoDict = @[@"Shine" , @"Jimmy"];

    MemoryModel * headModel = [[MemoryModel alloc]init:@"Teacher"];


    MemoryModel *front = headModel;

    //make a triangle retain cycle
    for(NSString *name in infoDict){
        MemoryModel *insideModel = [[MemoryModel alloc]init: name];
        front.nextModel = insideModel;
        front = insideModel;
    }

    front.nextModel = headModel;



    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Start" message:@"Draw Done Graph" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirm = [UIAlertAction actionWithTitle:@"Confirm" style: UIAlertActionStyleDefault handler:nil];

    [alert addAction:confirm];

    [self presentViewController:alert animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
