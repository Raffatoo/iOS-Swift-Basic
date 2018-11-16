//
//  ViewController.swift
//  Touch
//
//  Created by RCTorres on 11/15/18.
//  Copyright © 2018 RCTorres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        //rightSwipe.direction = .right -- default
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        leftSwipe.direction = .left
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        upSwipe.direction = .up
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        downSwipe.direction = .down
        //
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)
    }
    @objc func onSwipe(sender: UISwipeGestureRecognizer){
        if sender.state == .ended {
            switch sender.direction {
            case .right:
                view.backgroundColor = .red
                showText.text = "🤖"
            case .up:
                view.backgroundColor = .green
                showText.text = "👻"
            case .down:
                view.backgroundColor = .yellow
                showText.text = "😈"
            case .left:
                view.backgroundColor = .black
                showText.text = "👽"
            default:
                break
            }
        }
    }
}

