//
//  SessionState.h
//  SeAccountPlugin
//
//  Created by Steve Brenneis on 9/28/17.
//  Copyright © 2017 seComm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CryptoKitty_iOS/CryptoKitty_iOS.h>

@interface SessionState : NSObject

@property (nonatomic) CKRSAPublicKey *serverPublicKey;
@property (nonatomic) CKRSAPublicKey *userPublicKey;
@property (nonatomic) CKRSAPrivateKey *userPrivateKey;

@end
