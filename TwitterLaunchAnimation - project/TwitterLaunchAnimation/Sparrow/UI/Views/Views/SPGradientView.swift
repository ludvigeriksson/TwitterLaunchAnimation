//
//  GradientView.swift
//  PreloaderPhst
//
//  Created by Ivan Vorobei on 6/19/16.
//  Copyright © 2016 Ivan Vorobei. All rights reserved.
//

import UIKit

class SPGradientView: UIView {
    
    fileprivate var gradient: CAGradientLayer!
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    init(frame: CGRect, fromColor: UIColor, toColor: UIColor) {
        super.init(frame: frame)
        self.commonInit()
        self.setGradient(fromColor, toColor: toColor)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    fileprivate func commonInit() {
        self.gradient = CAGradientLayer();
        self.layer.insertSublayer(self.gradient, at: 0)
    }
    
    func setGradient(_ fromColor: UIColor,
                     toColor: UIColor,
                     startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0),
                     endPoint: CGPoint = CGPoint(x: 1.0, y: 1.0)) {
        self.gradient = CAGradientLayer()
        self.gradient!.colors = [fromColor.cgColor, toColor.cgColor]
        self.gradient!.locations = [0.0, 1.0]
        self.gradient!.startPoint = startPoint
        self.gradient!.endPoint = endPoint
        self.gradient!.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.insertSublayer(self.gradient!, at: 0)
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.gradient.frame = self.bounds
    }
}
