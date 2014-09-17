//
//  MyScene.h
//  Klondike
//

//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "MainGameSceneController.h"
@class MainGameSceneController;

@interface GameScene : SKScene
@property MainGameSceneController* controller;
@end
