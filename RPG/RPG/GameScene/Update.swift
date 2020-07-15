//
//  Update.swift
//  RPG
//
//  Created by 김지나 on 2020/03/03.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

extension GameScene {
    // 계속 실행되는 함수
    override func update(_ currentTime: TimeInterval) {
        /*if Player.position.x < touchPoint.x - 5 { // 플레이어의 위치가 포인터로 터치한 부분보다 왼쪽일 때
            Player.position.x = Player.position.x + 5
        } else if Player.position.x > touchPoint.x + 5 {
            Player.position.x = Player.position.x - 5
        }
        
        if Player.position.y < touchPoint.y - 5 { // 플레이어의 위치가 포인터로 터치한 부분보다 오른쪽일 때
            Player.position.y = Player.position.y + 5
        } else if Player.position.y > touchPoint.y + 5 {
            Player.position.y = Player.position.y - 5
        }*/
        print(Player.currentDirection)
    }
}
