//
//  FunctionFactory.m
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/26/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "SEFunctionFactory.h"
#import "SEPluginFunctionFactory.h"
#import "GenParamsFunction.h"

@interface GenParamsFunctionFactory : NSObject <SEPluginFunctionFactory>
- (id<SEPluginFunction>)create;
@end

@implementation GenParamsFunctionFactory
- (id<SEPluginFunction>)create { return [[GenParamsFunction alloc] init]; }
@end

@implementation SEFunctionFactory

@dynamic factories;

+ (void)initializeFactories {

    SEFunctionFactory.factories = [NSMutableDictionary dictionary];

    SEFunctionFactory.factories[@"genParams"] = [[GenParamsFunctionFactory alloc] init];
    
}

+ (id<SEPluginFunction>)getFunction:(NSString*)name {
    return SEFunctionFactory.factories[name];
}

@end
