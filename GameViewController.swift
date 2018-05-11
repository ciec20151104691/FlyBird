//
//  GameViewController.swift
//  game
//
//  Created by s20151104691 on 18/5/9.
//  Copyright © 2018年 ltx. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController:UIViewController{
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let skview = self.view as? SKView{
            if skview.scene == nil{
                //创建背景
                
                let hw = skview.bounds.size.height/skview.bounds.size.width
                let bground ＝ GameScene(size: CGSize(width: 320, height: 320 * hw))
                skview.showsFPS = true
                skview.showsNodeCount = true
                skview.showsPhysics = true
                skview.ignoresSiblingOrder = true
                
                bground.scaleMode = .aspectFill
                skview.presentScene(bground)
            }
        }
    }
    }
