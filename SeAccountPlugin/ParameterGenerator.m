//
//  ParameterGenerator.m
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/28/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import "ParameterGenerator.h"

@implementation ParameterGenerator

- (void) generateParameters:(NSString*)accountName {

    [self generateRSAKeys];

}

- (void) generateRSAKeys {

    CKRSAKeyPairGenerator *keyGen = [[CKRSAKeyPairGenerator alloc] init];
    CKRSAKeyPair *pair = [keyGen generateKeyPair:2048];
    self.userPublicKey = pair.publicKey;
    self.userPrivateKey = pair.privateKey;

}

@end
