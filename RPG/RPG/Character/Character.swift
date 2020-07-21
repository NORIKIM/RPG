//
//  Character.swift
//  RPG
//
//  Created by 김지나 on 2020/07/15.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    var currentDirection = Direction.stop //"Player's current direction is STOP"
    var lastDirection = Direction.stop
    // 이동속도
    let sp = CGFloat(5) // 따라서 스피드는 무조건 5
    var speedX = CGFloat()
    var speedY = CGFloat()
}
