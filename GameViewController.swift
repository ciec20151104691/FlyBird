//
//  GameViewController.swift
//  game
//
//  Created by s20151104691 on 18/5/9.
//  Copyright © 2018年 ltx. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController:UIViewController{
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let sk视图 = self.view as? SKView{
            if sk视图.scene == nil{
                //创建背景
                
                let 长宽比 = sk视图.bounds.size.height/sk视图.bounds.size.width
                let bground ＝ GameScene(size: CGSize(width: 320, height: 320 * 长宽比))
                sk视图.showsFPS = true
                sk视图.showsNodeCount = true
                sk视图.showsPhysics = true
                sk视图.ignoresSiblingOrder = true
                
                bground.scaleMode
            }
        }
    }
    }
