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

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let skview = self.view as? SKView {
            if skview.scene == nil {
                let aspectRatio = (skview.bounds.size.width)/(skview.bounds.size.height)
                let scene = GameScene(size: CGSize(width: 324.0, height: 600))//414.0 * aspectRatio))
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
