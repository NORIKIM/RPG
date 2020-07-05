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
            /*let walkAction = SKAction.move(to: location, duration: 5) // duration시간동안 이동
            Player.run(walkAction) // 플레이어의 위치를 location으로 변경해라*/
            //touchPoint = location
            controlBase.position = location
            controlBall.position = controlBase.position
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let DeltaX = location.x - controlBase.position.x
            let DeltaY = location.y - controlBase.position.y
            let angle = atan2(DeltaX, DeltaY)
            let length = controlBase.frame.size.height / 2
            let distanceX = cos(angle) * length
            let distanceY = sin(angle) * length
            
            if controlBase.frame.contains(location) {
                controlBall.position = location // 컨트롤 베이스 안에서 볼을 터치
            } else {
                // 컨트롤 베이스 밖에서 터치가 생기면
                controlBall.position = CGPoint(x: controlBase.position.x + distanceX, y: controlBase.position.y + distanceY)
            }
        }
    }
    
    // 터치가 끝나면 컨트롤 볼을 제자리로
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let moveCenterAction = SKAction.move(to: controlBase.position, duration: 0.2)
            moveCenterAction.timingMode = .easeOut // 빨리 움직였다가 천천히 움직이게 해주는 효과
            
            controlBall.run(moveCenterAction)
        }
    }
}
