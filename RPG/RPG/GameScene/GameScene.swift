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
    let attackButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let attackButton = SKSpriteNode(imageNamed: "AttackButton")
    let itemButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let itemButton = SKSpriteNode(imageNamed: "ItemButton")
    let skillButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let skillButton = SKSpriteNode(imageNamed: "SkillButton")
    
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
        
        attackButtonBase.position = CGPoint(x: 375, y: -125)
        attackButtonBase.zPosition = 99
        attackButtonBase.alpha = 0.5
        self.addChild(attackButtonBase)
        attackButton.position = attackButtonBase.position
        attackButton.zPosition = 100
        attackButton.alpha = attackButtonBase.alpha
        self.addChild(attackButton)
        
        itemButtonBase.position = CGPoint(x: 350, y: -300)
        itemButtonBase.zPosition = 99
        itemButtonBase.alpha = 0.5
        self.addChild(itemButtonBase)
        itemButton.position = itemButtonBase.position
        itemButton.zPosition = 100
        itemButton.alpha = itemButtonBase.alpha
        self.addChild(itemButton)
        
        skillButtonBase.position = CGPoint(x: 550, y: -200)
        skillButtonBase.zPosition = 99
        skillButtonBase.alpha = 0.5
        self.addChild(skillButtonBase)
        skillButton.position = skillButtonBase.position
        skillButton.zPosition = 100
        skillButton.alpha = skillButtonBase.alpha
        self.addChild(skillButton)
        
        Player.zPosition = 10
        self.addChild(Player)
    }
}
