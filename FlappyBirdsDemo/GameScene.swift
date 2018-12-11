//
//  GameScene.swift
//  FlappyBirdsDemo
//
//  Created by MAKL on 11/12/18.
//  Copyright © 2018 Akhila. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let worldNode = SKNode()
    var playableStart: CGFloat = 0
    var playableheight: CGFloat = 0
    
    override func didMove(to view: SKView) {
        addChild(worldNode)
    }
    
    func setupBackgroun() {
        let background = SKSpriteNode(imageNamed: "Background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width/2, y: size.height)
        playableStart = size.height - background.size.height
        playableheight = background.size.height
        worldNode.addChild(background)
    }
    
    func setupForeground() {
        let foreground = SKSpriteNode(imageNamed: "Ground")
        foreground.anchorPoint = CGPoint(x: 0.0, y: 1.0)
        foreground.position = CGPoint(x: size.width/2, y: playableStart)
    }
}
