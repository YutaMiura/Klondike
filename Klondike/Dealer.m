//
//  Dealer.m
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import "Dealer.h"

@implementation Dealer
static Dealer* sharedDealer;
NSMutableArray* _cards;
static float deckPositionX = 50.0f;
static float deckPositionY = 500.0f;
static float dealPositionX = 25.0f;
static float dealPositionY = 400.0f;


+(Dealer*) sharedDealer {
    if(!sharedDealer) {
        sharedDealer = [[self alloc] init];
    }
    return sharedDealer;
}

+(id) allocWithZone:(struct _NSZone *)zone {
    if(!sharedDealer) {
       sharedDealer = [super allocWithZone:zone];
    }
    return sharedDealer;
}

-(void) shuffleCards {
    for (int index = 0 ; index < [_cards count] ; index++) {
        int rand = arc4random() % [_cards count];
        Card* tmp = _cards[rand];
        _cards[rand] = _cards[index];
        _cards[index] = tmp;
        
    }
}

-(void) setDeckOnScene:(SKScene*) scene {
    float shiftAmount = 0.0f;
    for (Card* card in _cards) {
        card.position = CGPointMake(deckPositionX + shiftAmount,
                                       deckPositionY + shiftAmount);
        [scene addChild:card];
        shiftAmount += 0.1;
    }
}

-(void) dealCardsOnScene:(SKScene*) scene {
    float shiftAmountX = 0.0f;
    float shiftAmountY = 0.0f;
    int cnt = 1;
    int loopCount = 0;
    for (Card* card in _cards) {
        card.position = CGPointMake(dealPositionX + shiftAmountX,
                                        dealPositionY + shiftAmountY);
        if ((++loopCount % cnt) == 0) {
            [card turnCard];
            shiftAmountX += 45.0f;
            shiftAmountY = 0.0f;
            loopCount = 0;
            if (++cnt>7) break;
            continue;
        }
        shiftAmountY -= 30.0f;
    }
}

-(void) dealFromDeck:(NSMutableArray*) deck {
    
}

-(void) setCards:(NSMutableArray*) cards {
    _cards = cards;
}
@end
