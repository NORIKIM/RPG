//
//  Control.swift
//  RPG
//
//  Created by 김지나 on 2020/03/02.
//  Copyright © 2020 김지나. All rights reserved.
//

import SpriteKit
import GameplayKit

extension GameScene {
    //MARK:- touch
    // 터치를 했을때 실행
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self) // 터치를 한 포인트
            Player.position = CGPoint(x: location.x, y: location.y) // 플레이어의 위치를 location으로 변경해라
        }
    }
    // touch End
}
