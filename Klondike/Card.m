//
//  Card.m
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import "Card.h"

static float size_hight = 89.0f;
static float size_width = 58.0f;
static float size_per_100 = 65;

@implementation Card
-(Card*) initCardWithNumber:(MYCardNumber) number color:(MYCardColor) cardColor symbol:(MYSymbol) symbol{
    self.foreground = [ResourceManager getCardTextureWithSymbol:symbol andNumber:number FileExtension:@".png"];
    self.background = [ResourceManager getCardBackgroundTexture];
    self = [super initWithTexture:self.background];
    self.turnCondition  = BACK;
	self.size = CGSizeMake(size_width * (size_per_100 / 100), size_hight * (size_per_100 / 100));
    self.number = number;
    self.cardColor = cardColor;
    self.symbol = symbol;
    
    return self;
}

-(void) turnCard {
    if(self.turnCondition == BACK) {
        self.texture = self.foreground;
        self.turnCondition = FORE;
        self.userInteractionEnabled = true;
    } else {
        self.texture = self.background;
        self.turnCondition = BACK;
        self.userInteractionEnabled = false;
    }
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touched");
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
    if(touch != nil){
        CGPoint touchedPoint = [touch locationInNode:self.parent];
        self.position = touchedPoint;
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    //[self.parent ]
}


@end
