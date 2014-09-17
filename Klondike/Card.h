//
//  Card.h
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "ResourceManager.h"
#import "GameScene.h"

@interface Card : SKSpriteNode

typedef NS_ENUM(int, MYSymbol) {
    SYMBOL_JOKER,SYMBOL_SPADE,SYMBOL_CLUB,SYMBOL_HEART,SYMBOL_DIAMOND
};

typedef NS_ENUM(int, MYCardNumber) {
    NUM_JOKER,NUM_ACE,NUM_TWO,NUM_THREE,NUM_FOUR,NUM_FIVE,NUM_SIX,NUM_SEVEN,
    NUM_EIGHT,NUM_NINE,NUM_TEN,NUM_JACK,NUM_QUEEN,NUM_KING
};
typedef NS_ENUM(NSInteger, MYCardColor) {
    SYMBOLCOLOR_RED,SYMBOLCOLOR_BLACK
};
typedef NS_ENUM(int, TurnCondition){
    FORE,BACK
};

@property MYCardNumber number;
@property MYSymbol symbol;
@property MYCardColor cardColor;
@property SKTexture* foreground;
@property SKTexture* background;
@property TurnCondition turnCondition;

-(Card*) initCardWithNumber:(MYCardNumber) number color:(MYCardColor) cardColor symbol:(MYSymbol) symbol;
-(void) turnCard;

@end
