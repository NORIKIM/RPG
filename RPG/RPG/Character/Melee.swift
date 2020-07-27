//
//  Melee.swift
//  RPG
//
//  Created by 김지나 on 2020/07/27.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

extension Character {
    func attack_Melee() {
        let attackBody = Character(imageNamed: "Attack_MeleeE1")
        attackBody.zPosition = 1
        self.addChild(attackBody)
        
        attack_Melee_Animation(attackBody: attackBody)
        
        let waitAtion = SKAction.wait(forDuration: 0.2)
        let removeAciton = SKAction.run { attackBody.removeFromParent() }
        attackBody.run(SKAction.sequence([waitAtion, removeAciton]))
    }
    
    func attack_Melee_Animation(attackBody: Character) {
        if self.attachDirection == .east {
            attackBody.position = CGPoint(x: 15, y: -12)
            attackBody.run(SKAction(named: "Attack_MeleeE")!)
        } else if self.attachDirection == .west {
            attackBody.position = CGPoint(x: -15, y: -12)
            attackBody.run(SKAction(named: "Attack_MeleeW")!)
       } else if self.attachDirection == .south {
            attackBody.position = CGPoint(x: -15, y: -12)
            attackBody.run(SKAction(named: "Attack_MeleeS")!)
        } else {
            self.attachDirection == .north
            attackBody.position = CGPoint(x: 1-5, y: 12)
            attackBody.run(SKAction(named: "Attack_MeleeN")!)
       }
    }
}
