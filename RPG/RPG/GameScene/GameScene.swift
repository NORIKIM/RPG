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
    
    //viewDidLoad
    override func didMove(to view: SKView) {
        self.addChild(Player)
    }
}
