//
//  GameScene.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 02/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
	var helloNode: HelloWorld!
    var hero: Hero!
    
    
    override func didMoveToView(view: SKView) {
        let backgroundTexture = SKTexture(imageNamed:"background")

        let background = SKSpriteNode(texture: backgroundTexture, size: self.frame.size)
        background.position =  CGPointMake(CGRectGetMidX(self.frame)*0.5, CGRectGetMidY(self.frame)*0.5)
        
        self.addChild(background)
        
        self.scaleMode = SKSceneScaleMode.AspectFill
        
        self.physicsWorld.contactDelegate = self
        self.physicsWorld.gravity = CGVectorMake(0, -3)
        
        self.hero = Hero(imageNamed: "hero1")
        
        self.hero.position = CGPointMake(350.0, 450.0)
        self.addChild(self.hero)
		
        Terrain().create(self)
		
		
		self.helloNode = HelloWorld();
		self.addChild(helloNode.newHelloLabelNode());
		self.helloNode.update(CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)))
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.hero.flap()
    }
   
    override func update(currentTime: CFTimeInterval) {
        self.hero.update()
    }
    
    
    func didBeginContact(contact: SKPhysicsContact!) {
    }
    
    func didEndContact(contact: SKPhysicsContact!)
    {
    }
	
}


