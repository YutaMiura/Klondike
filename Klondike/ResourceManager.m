//
//  ResourceManager.m
//  Klondike
//
//  Created by Yuta Miura on 2014/08/19.
//  Copyright (c) 2014年 Yuta Miura. All rights reserved.
//

#import "ResourceManager.h"

NSString* resourcesFolderPath = @"./Resources";

@implementation ResourceManager
+(SKTexture*) getCardTextureWithSymbol:(int)cardSymbolNum andNumber:(int)
cardNumber FileExtension:(NSString*) fileExtension{
    
    NSString* cardSymbol = [self getSymbolNameWithSymbolNum:cardSymbolNum];
    
    if(cardSymbol == nil){return nil;}
    
    NSString* imageName = [[[cardSymbol stringByAppendingString:@"-"]
                           stringByAppendingString:[[NSString alloc] initWithFormat:@"%d", cardNumber]]
                           stringByAppendingString:fileExtension];

    return [SKTexture textureWithImageNamed:imageName];

}

+(NSString*) getSymbolNameWithSymbolNum:(int) symbolNum {
    switch (symbolNum) {
        case SYMBOL_CLUB:
            return @"club";
            break;
        case SYMBOL_DIAMOND:
            return @"diamond";
            break;
        case SYMBOL_HEART:
            return @"heart";
            break;
        case SYMBOL_SPADE:
            return @"spade";
            break;
        default:
            return nil;
            break;
    }
}

+(SKTexture*) getCardBackgroundTexture {
    return [SKTexture textureWithImageNamed:@"background.png"];
}

@end
