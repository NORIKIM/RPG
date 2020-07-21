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
            
            // 동쪽의 경우에서 키로 지정했던 "move"를 이용해서 지금은 멈춤 상태이니 texture에 멈춰있는 상태 즉,하나의 이미지만 넣어준다
            if currentDirection != lastDirection {
                removeAction(forKey: "move")
                
                if lastDirection == Direction.east {
                    self.texture = SKTexture(imageNamed: "RedSwanMoveE1")
                }
                if lastDirection == Direction.west {
                    self.texture = SKTexture(imageNamed: "RedSwanMoveW1")
                }
                if lastDirection == Direction.south {
                    self.texture = SKTexture(imageNamed: "RedSwanMoveS1")
                }
                if lastDirection == Direction.north {
                    self.texture = SKTexture(imageNamed: "RedSwanMoveN1")
                }
            }
        case .east:
            speedX = sp
            speedY = 0
            
            // 동쪽으로 가고 있는 동안은 애니메이션을 한번만 실행
            // currenctDirection이 stop 이고 lastDirection이 동쪽이라고 하면 실행할 조건문
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "RedSwanMoveE")
                var moveFrame = [SKTexture]() // SKTexture = 이미지를 의미
                
                // textureNames.count = moveAtlas 폴더 내에 파일 개수
                // 즉, 폴더 내 총8개 파일 중 4개수 만큼만 돈다
                for i in 1...moveAtlas.textureNames.count / 2 {
                    let textureName = "RedSwanMoveE" + "\(i)" // RedSwanMoveE1 ~ 4
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(SKAction.animate(with: moveFrame, timePerFrame: 0.125))// 동쪽으로 가는 동안은 계속 반복해준다 //moveFrame안의 이미지파일들을 0.125초 마다 반복해서 보여준다
                self.run(moveAnimationAction, withKey: "move")
            }
            lastDirection = currentDirection
        case .west:
            speedX = -sp
            speedY = 0
            
            if currentDirection != lastDirection {
                let moveAtlas = SKTextureAtlas(named: "RedSwanMoveW")
                var moveFrame = [SKTexture]()
  
                for i in 1...moveAtlas.textureNames.count / 2 {
                    let textureName = "RedSwanMoveW" + "\(i)"
                    moveFrame.append(moveAtlas.textureNamed(textureName))
                }
                
                let moveAnimationAction = SKAction.repeatForever(SKAction.animate(with: moveFrame, timePerFrame: 0.125))
                self.run(moveAnimationAction, withKey: "move")
            }
            lastDirection = currentDirection
            
        case .south:
            speedX = 0
            speedY = -sp
            
            if currentDirection != lastDirection {
                           let moveAtlas = SKTextureAtlas(named: "RedSwanMoveS")
                           var moveFrame = [SKTexture]()
             
                           for i in 1...moveAtlas.textureNames.count / 2 {
                               let textureName = "RedSwanMoveS" + "\(i)"
                               moveFrame.append(moveAtlas.textureNamed(textureName))
                           }
                           
                           let moveAnimationAction = SKAction.repeatForever(SKAction.animate(with: moveFrame, timePerFrame: 0.125))
                           self.run(moveAnimationAction, withKey: "move")
                       }
                       lastDirection = currentDirection
            
        case .north:
            speedX = 0
            speedY = sp
            
            if currentDirection != lastDirection {
                           let moveAtlas = SKTextureAtlas(named: "RedSwanMoveN")
                           var moveFrame = [SKTexture]()
             
                           for i in 1...moveAtlas.textureNames.count / 2 {
                               let textureName = "RedSwanMoveN" + "\(i)"
                               moveFrame.append(moveAtlas.textureNamed(textureName))
                           }
                           
                           let moveAnimationAction = SKAction.repeatForever(SKAction.animate(with: moveFrame, timePerFrame: 0.125))
                           self.run(moveAnimationAction, withKey: "move")
                       }
                       lastDirection = currentDirection
            
        }
        self.position = CGPoint(x: self.position.x + speedX, y: self.position.y + speedY)
    }
}
