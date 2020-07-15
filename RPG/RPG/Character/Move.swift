//
//  Move.swift
//  RPG
//
//  Created by 김지나 on 2020/07/15.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

extension Character {
    func Function_Move() {
        switch currentDirection {
        case .stop:
            speedX = 0
            speedY = 0
        case .east:
            speedX = sp
            speedY = 0
        case .west:
            speedX = -sp
            speedY = 0
        case .south:
            speedX = 0
            speedY = -sp
        case .north:
            speedX = 0
            speedY = sp
        }
        self.position = CGPoint(x: self.position.x + speedX, y: self.position.y + speedY)
    }
}
