//
//  PluginFunctionFactory.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/26/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#ifndef PluginFunctionFactory_h
#define PluginFunctionFactory_h

#import "PluginFunction.h"

@protocol PluginFunctionFactory <NSObject>

@required

- (id<PluginFunction>)create;

@end

#endif /* PluginFunctionFactory_h */
