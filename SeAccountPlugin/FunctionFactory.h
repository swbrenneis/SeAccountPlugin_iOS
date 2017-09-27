//
//  FunctionFactory.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/26/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PluginFunction.h"

@interface FunctionFactory : NSObject

@property (class) NSMutableDictionary *factories;

+ (void)initializeFactories;

+ (id<PluginFunction>)getFunction:(NSString*)name;

@end
