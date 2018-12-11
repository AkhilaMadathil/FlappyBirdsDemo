//
//  GameViewController.swift
//  FlappyBirdsDemo
//
//  Created by MAKL on 11/12/18.
//  Copyright © 2018 Akhila. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
//        // including entities and graphs.
//        if let scene = GKScene(fileNamed: "GameScene") {
//            
//            // Get the SKScene from the loaded GKScene
//            if let sceneNode = scene.rootNode as! GameScene? {
//                
//                // Copy gameplay related content over to the scene
//                sceneNode.entities = scene.entities
//                sceneNode.graphs = scene.graphs
//                
//                // Set the scale mode to scale to fit the window
//                sceneNode.scaleMode = .aspectFill
//                
//                // Present the scene
//                if let view = self.view as! SKView? {
//                    view.presentScene(sceneNode)
//                    
//                    view.ignoresSiblingOrder = true
//                    
//                    view.showsFPS = true
//                    view.showsNodeCount = true
//                }
//            }
//        }
//    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let skview = self.view as? SKView {
            if skview.scene == nil {
                let aspectRatio = (skview.bounds.size.width)/(skview.bounds.size.height)
                let scene = GameScene(size: CGSize(width: 320.0, height: 320.0 * aspectRatio))
                skview.showsFPS = false
                skview.ignoresSiblingOrder = true
                skview.showsPhysics = false
                skview.showsNodeCount = false
                scene.scaleMode = .aspectFit
                skview.presentScene(scene)
            }
        }
    }
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
