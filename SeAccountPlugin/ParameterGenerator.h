//
//  ParameterGenerator.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/28/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "SessionState.h"

@interface ParameterGenerator : SessionState

- (void) generateParameters:(NSString*)accountName;

@end
