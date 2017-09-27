//
//  NewAccountFunction.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/27/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "PluginFunction.h"

@interface NewAccountFunction : NSObject <PluginFunction>

- (CDVPluginResult*)execute:(NSArray*)args;

@end
