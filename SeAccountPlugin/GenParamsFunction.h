//
//  GenParamsFunction.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 10/3/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "SEPluginFunction.h"
#import "SessionState.h"

@interface GenParamsFunction : NSObject <SEPluginFunction>

@property (nonatomic) SessionState *state;

- (CDVPluginResult*)execute:(NSArray*)args;

- (void) generateAccountParameters:(NSString*)accountName;

@end
