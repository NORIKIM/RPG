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
    //MARK:- Control Ball Angle
    // 컨트롤 볼을 이용해서 캐릭터의 방향을 정해준다.
    func controllBallAngel(degree: CGFloat) {
        if degree >= -45 && degree < 45 {
            print("Player's current direction is EAST")
        } else if degree >= 45 && degree < 135 {
            print("Player's current direction is NORTH")
        } else if degree >= 135 && degree < 180 {
            print("Player's current direction is WEST")
        } else if degree >= -180 && degree < -135 {
            print("Player's current direction is WEST")
        } else if degree >= -135 && degree < -45 {
            print("Player's current direction is SOUTH")
        }
    }
    
    //MARK:- touch
    // 터치를 했을때 실행
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self) // 터치를 한 포인트
            /*let walkAction = SKAction.move(to: location, duration: 5) // duration시간동안 이동
            Player.run(walkAction) // 플레이어의 위치를 location으로 변경해라*/
            
            if location.x < 0 { // 터치 위치가 화면 우측으로 갔을 때
                //touchPoint = location
                controlBase.position = location
                controlBall.position = controlBase.position
            } else { // 화면 우측의 버튼 터치 시
                if attackButtonBase.frame.contains(location) {
                    print("attack")
                } else if itemButtonBase.frame.contains(location) {
                    print("item")
                } else if skillButtonBase.frame.contains(location){
                    print("skill")
                }
            }
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if location.x < 0 {
                let DeltaX = location.x - controlBase.position.x
                let DeltaY = location.y - controlBase.position.y
                let angle = atan2(DeltaY, DeltaX) // 밑변과 윗변을 줘서 탄젠트 값을 구함
                let degree = angle * CGFloat(180 / Double.pi)
                
                controllBallAngel(degree: degree)
                
                let length = controlBase.frame.size.height / 2
                let distanceX = cos(angle) * length
                let distanceY = sin(angle) * length
                
                if controlBase.frame.contains(location) { // 터치 포인트가 베이스 안의 영역으로 들어오면
                    controlBall.position = location // 컨트롤 베이스 안에서 볼을 터치
                } else {
                    // 컨트롤 베이스 밖에서 터치가 생기더라도 베이스 포지션 x,y 값안에서 움직이도록 한다
                    controlBall.position = CGPoint(x: controlBase.position.x + distanceX, y: controlBase.position.y + distanceY)
                }
            }
        }
    }
    
    // 터치가 끝나면 컨트롤 볼을 제자리로
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if location.x < 0 {
                let moveCenterAction = SKAction.move(to: controlBase.position, duration: 0.2)
                moveCenterAction.timingMode = .easeOut // 빨리 움직였다가 천천히 움직이게 해주는 효과
                
                controlBall.run(moveCenterAction)
            }
        }
    }
}
