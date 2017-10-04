//
//  GenParamsFunction.m
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 10/3/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "GenParamsFunction.h"
#import "ParameterGenerator.h"

@implementation GenParamsFunction

- (CDVPluginResult*)execute:(NSArray*)args {
    
    NSString *accountName = args[0];
    [self generateAccountParameters:accountName];

    return nil;

}

- (void) generateAccountParameters:(NSString*)accountName {

    ParameterGenerator *gen = [[ParameterGenerator alloc] init];
    [gen generateParameters:accountName];
    _state = gen;

}

@end
