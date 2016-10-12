//
//  SPBlurView.swift
//  st
//
//  Created by Ivan Vorobei on 9/10/16.
//  Copyright © 2016 Ivan Vorobei. All rights reserved.
//

import UIKit

open class SPBlurView: UIVisualEffectView {
    
    fileprivate let blurEffect: UIBlurEffect
    open var blurRadius: CGFloat {
        return blurEffect.value(forKeyPath: "blurRadius") as! CGFloat
    }
    
    public convenience init() {
        self.init(withRadius: 0)
    }
    
    public init(withRadius radius: CGFloat) {
        let customBlurClass: AnyObject.Type = NSClassFromString("_UICustomBlurEffect")!
        let customBlurObject: NSObject.Type = customBlurClass as! NSObject.Type
        self.blurEffect = customBlurObject.init() as! UIBlurEffect
        self.blurEffect.setValue(1.0, forKeyPath: "scale")
        self.blurEffect.setValue(radius, forKeyPath: "blurRadius")
        super.init(effect: radius == 0 ? nil : self.blurEffect)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func setBlurRadius(_ radius: CGFloat) {
        guard radius != blurRadius else {
            return
        }
        blurEffect.setValue(radius, forKeyPath: "blurRadius")
        self.effect = blurEffect
    }
    
}

