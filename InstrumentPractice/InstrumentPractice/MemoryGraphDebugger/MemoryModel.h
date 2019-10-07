//
//  MemoryModel.h
//  InstrumentPractice
//
//  Created by i9400503 on 2019/10/7.
//  Copyright © 2019 BrilleShine. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MemoryModel : NSObject

@property(nonatomic , strong) MemoryModel* nextModel;

@property(nonatomic , strong) NSString* name;

-(id)init : (NSString *) name;

@end

NS_ASSUME_NONNULL_END
