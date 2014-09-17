//
//  Dealer.h
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "Card.h"

@interface Dealer : NSObject
+(Dealer*) sharedDealer;
-(void) shuffleCards;
-(void) setDeckOnScene:(SKScene*) scene;
-(void) setCards:(NSMutableArray*) cards;
-(void) dealCardsOnScene:(SKScene*) scene;
@end
