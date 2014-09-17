//
//  ResourceManager.h
//  Klondike
//
//  Created by Yuta Miura on 2014/08/19.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "Card.h"

@interface ResourceManager : NSObject
+(SKTexture*) getCardTextureWithSymbol:(int)cardSymbolNum andNumber:(int) cardNumber
                         FileExtension:(NSString*) fileExtension;
+(SKTexture*) getCardBackgroundTexture;
@end
