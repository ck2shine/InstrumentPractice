//
//  MemoryModel.m
//  InstrumentPractice
//
//  Created by i9400503 on 2019/10/7.
//  Copyright © 2019 BrilleShine. All rights reserved.
//

#import "MemoryModel.h"

@implementation MemoryModel

-(id)init : (NSString *) name
{
    self = [super init];

    if (self)
    {
        self.name = name;
    }

    return self;
}

@end
