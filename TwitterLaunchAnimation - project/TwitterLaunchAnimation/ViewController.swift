//
//  ViewController.swift
//  TwitterLaunchAnimation
//
//  Created by Ivan Vorobei on 10/10/16.
//  Copyright © 2016 Ivan Vorobei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    @IBOutlet weak var screenImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            screenImageView.image = UIImage.init(named: "twitter-screen-iphone")
        } else if (UIDevice.current.userInterfaceIdiom == .pad) {
               screenImageView.image = UIImage.init(named: "twitter-screen-ipad")
        } else {
           screenImageView.removeFromSuperview()
        }
        
    }
}

