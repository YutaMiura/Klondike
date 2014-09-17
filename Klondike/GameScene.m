//
//  MyScene.m
//  Klondike
//
//  Created by Yuta Miura on 2014/07/27.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import "GameScene.h"
#import "GameMaster.h"

@implementation GameScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0 green:10 blue:0 alpha:1.0];
        self.controller = [[MainGameSceneController alloc] init];
        
    }
    return self;
}

/*
 -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
     for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}
*/
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

-(void)canPutPosition:(NSSet *)touches withCard:(Card *)card {
    for (UITouch* touch in touches){
        [self.controller canPutCard:card withPosition:[touch locationInNode:self]];
    }
}

@end
