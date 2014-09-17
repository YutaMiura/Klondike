//
//  GameMaster.m
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import "GameMaster.h"

@implementation GameMaster
static GameMaster* sharedMaster;
NSMutableArray* usesCards;


+(GameMaster*) sharedGameMaster {
    if(sharedMaster == nil){
        sharedMaster = [[self alloc] init];
    }
    return sharedMaster;
}

+(id) allocWithZone:(struct _NSZone *)zone {
    if(!sharedMaster) {
        sharedMaster = [super allocWithZone:zone];
    }
    return sharedMaster;
}


-(Dealer*) callDealer {
	//クロンダイクで使用するカードを作成
    //使用するカードは、Jokerを抜いた52枚
    usesCards = [self readyCards];
    return [self readyDealer];
}

-(NSMutableArray*) readyCards {
    NSMutableArray* usedCards = [NSMutableArray array];
    for (int cardSymbol = SYMBOL_SPADE; cardSymbol <= SYMBOL_DIAMOND; cardSymbol++) {
        for (int cardNum = NUM_ACE; cardNum <= NUM_KING; cardNum++) {
            int cardColor;
            switch (cardSymbol) {
                case SYMBOL_SPADE:
                case SYMBOL_CLUB:
                    cardColor = SYMBOLCOLOR_BLACK;
                    break;
                case SYMBOL_HEART:
                case SYMBOL_DIAMOND:
                    cardColor = SYMBOLCOLOR_RED;
                    break;
                default:
                    //TODO:Error
                    break;
            }
            [usedCards addObject:[[Card alloc] initCardWithNumber:cardNum color:cardColor symbol:cardSymbol]];
        }
    }
    
    return usedCards;
}

-(Dealer*) readyDealer {
    Dealer* dealer = [Dealer sharedDealer];
    [dealer setCards:usesCards];
    return dealer;
}

-(bool) canPutPosition:(Card *)card {
    return false;
}

@end
