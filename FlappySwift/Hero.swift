//
//  Hero.swift
//  FlappySwift
//
//  Created by Giordano Scalzo on 03/06/2014.
//  Copyright (c) 2014 Effective Code. All rights reserved.
//

import SpriteKit

class Hero: SKSpriteNode
{
    init(imageNamed name: String!){
        super.init(imageNamed: name)
        
        self.physicsBody = SKPhysicsBody(rectangleOfSize:
            CGSizeMake(self.size.width, self.size.height))
            
        self.physicsBody.dynamic = true
        self.animate()
    
    }
    init(texture: SKTexture!)
    {
        super.init(texture: texture)
    }
    
    init(texture: SKTexture!, color: UIColor!, size: CGSize)
    {
        super.init(texture: texture, color: color, size:size)
    }
    
    
    func animate(){
        let animationFrames = [
        SKTexture(imageNamed:"hero1"),
        SKTexture(imageNamed:"hero2")
        ]
        

        self.runAction(SKAction.repeatActionForever(SKAction.animateWithTextures(animationFrames, timePerFrame: 0.1)))
    }

    func update() {
        if self.physicsBody.velocity.dy > 30.0 {
            self.zRotation = (3.14/6.0)
        } else if self.physicsBody.velocity.dy < -100.0 {
			self.physicsBody.velocity.dy = -100
            self.zRotation = -1*(3.14/4.0)
        } else {
            self.zRotation = 0.0
        }
		
		var pt = self.position
		if pt.y < 100
		{
			pt.y = 100
			self.position = pt
		}
		NSLog("===pt=(\(pt.x), \(pt.y))==");
    }
    
    
    func flap () {
        self.physicsBody.velocity = CGVectorMake(0, 0)
		self.physicsBody.applyImpulse(CGVectorMake(0, 4))
    }

}
