//
//  GameScene.swift
//  game
//
//  Created by s20151104691 on 18/5/9.
//  Copyright © 2018年 ltx. All rights reserved.
//

import SpriteKit
import GameplayKit

enum picture:CGFloat  {
    case background
    case beforeground
    case gamerole
}


class GameScene: SKScene {
    
    let world = SKNode()
    var GameBegin:CGFloat = 0;
    var Gameheight:CGFloat = 0;
    
    
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        addChild(world)
        makeground()
        beforeground()
    
    }

    
    func makeground(){
        let background = SKSpriteNode(imageNamed:"Background")
        background.anchorPoint = CGPoint(x:0.5,y:1.0)
        background.position = CGPoint(x:size.width/2,y:size.height)
        background.zPosition = picture.background.rawValue
        world.addChild(background)
        
        GameBegin = size.height - background.size.height
        Gameheight = background.size.height
    }
    
    func beforeground(){
        let beforeground = SKSpriteNode(imageNamed: "Ground")
        beforeground.anchorPoint = CGPoint(x:0.5,y:1.0)
        beforeground.position = CGPoint(x:0,y:GameBegin)
        beforeground.zPosition = picture.beforeground.rawValue
        world.addChild(beforeground)
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
