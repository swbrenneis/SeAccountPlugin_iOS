//
//  FunctionFactory.m
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/26/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "FunctionFactory.h"
#import "PluginFunctionFactory.h"
#import "NewAccountFunction.h"

@interface NewAccountFunctionFactory : NSObject <PluginFunctionFactory>
- (id<PluginFunction>)create;
@end

@implementation NewAccountFunctionFactory
- (id<PluginFunction>)create { return [[NewAccountFunction alloc] init]; }
@end

@implementation FunctionFactory

@dynamic factories;

+ (void)initializeFactories {

    FunctionFactory.factories = [NSMutableDictionary dictionary];

    FunctionFactory.factories[@"newAccount"] = [[NewAccountFunctionFactory alloc] init];
    
}

+ (id<PluginFunction>)getFunction:(NSString*)name {
    return FunctionFactory.factories[name];
}

@end
