//
//  File.swift
//  
//
//  Created by Jonathan Pappas on 10/3/20.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
}

var w: CGFloat = 1000
let h: CGFloat = 1000

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let view = self.view as? SKView {
            w = (UIScreen.main.bounds.size.width / UIScreen.main.bounds.size.height) * 1000
            
            let scene = Scene()
            scene.scaleMode = .aspectFit
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
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

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
