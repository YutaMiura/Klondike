//
//  GameMaster.h
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dealer.h"
@class Card, Dealer;

@interface GameMaster : NSObject
+(GameMaster*) sharedGameMaster;
+(id) allocWithZone:(struct _NSZone *)zone;
-(Dealer*) callDealer;
-(bool) canPutPosition:(Card*)card;
@end
