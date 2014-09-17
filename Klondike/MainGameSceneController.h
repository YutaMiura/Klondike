//
//  ViewController.h
//  Klondike
//

//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "GameMaster.h"
@class Card;

@interface MainGameSceneController : UIViewController
- (BOOL)canPutCard:(Card*)card withPosition:(CGPoint) position;
@end
