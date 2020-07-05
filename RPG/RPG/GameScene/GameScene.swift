//
//  GameScene.swift
//  RPG
//
//  Created by 김지나 on 2020/03/02.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let Player = SKSpriteNode(imageNamed: "RedSwan")
    let controlBase = SKSpriteNode(imageNamed: "ControlBase")
    let controlBall = SKSpriteNode(imageNamed: "ControlBall")
    
    //var touchPoint = CGPoint()
    //viewDidLoad
    override func didMove(to view: SKView) {
        controlBase.position = CGPoint(x: -500, y: -200)
        controlBase.zPosition = 100
        controlBase.alpha = 0.5
        self.addChild(controlBase)
        
        controlBall.position = controlBase.position
        controlBall.zPosition = controlBase.zPosition
        controlBall.alpha = controlBase.alpha
        self.addChild(controlBall)
        
        Player.zPosition = 10
        self.addChild(Player)
    }
}
