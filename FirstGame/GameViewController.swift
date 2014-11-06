//
//  GameViewController.swift
//  FirstGame
//
//  Created by Екатерина Колесникова on 06.11.14.
//  Copyright (c) 2014 KKate. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the view.
        let skView = view as SKView
        skView.multipleTouchEnabled = false

        // Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill

        // Present the scene.
        skView.presentScene(scene)
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
