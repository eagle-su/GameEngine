//
//  HLVBOTestLayer.m
//  GameEngine
//
//  Created by huxiaozhou on 14-6-20.
//  Copyright (c) 2014年 Hoolai. All rights reserved.
//

#import "VBOTestLayer.h"
#import "HLSprite.h"
#import "HLDrawNode.h"
#import "HLDirector.h"
#import "HLClippingNode.h"
#import "HL3ClippingNode.h"
#import "HLWireframeCone.h"
#import "HLMoveBy.h"
#import "HL3Light.h"
#import "HL3Node.h"
#import "HLMoveTo.h"
#import "HLSequence.h"
#import "HLScaleTo.h"
#import "HLScaleBy.h"
#import "HLFlipX3D.h"
#import "HLWave3D.h"
#import "HLFBXManager.h"
#import "HLFBXObject.h"
#import "VBOTestObject.h"

@implementation VBOTestLayer

enum {
	kTagTitleLabel = 1,
	kTagSubtitleLabel = 2,
	kTagStencilNode = 100,
	kTagClipperNode = 101,
	kTagContentNode = 102,
};

- (void)dealloc{
    [super dealloc];
}


+ (HLScene*)scene{
    HLScene *scene = [HLScene scene];
	
	// 'layer' is an autorelease object.
	VBOTestLayer *layer = [VBOTestLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

+ (id)node{
    return [[[self alloc] init] autorelease];
}

- (id)init{
    if (self = [super init]) {
        
        
        VBOTestObject * vo = [VBOTestObject node];
        [vo setPosition:CGPointMake(160, 240)];
        [self addChild:vo];
        [vo setRotation:45];
        
        VBOTestObject * vo2 = [VBOTestObject node];
        [vo2 setPosition:CGPointMake(100, 100)];
        [self addChild:vo2];
        
        HLSprite * sprite = [HLSprite spriteWithFile:@"Marble.png"];
        [sprite setPosition:CGPointMake(20, 20)];
        [self addChild:sprite];
    }
    return self;
}

- (void)draw{
    [super draw];
}



@end
