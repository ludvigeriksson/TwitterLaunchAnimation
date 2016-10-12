//
//  SPUILabelExtenshion.swift
//  st
//
//  Created by Ivan Vorobei on 9/12/16.
//  Copyright © 2016 Ivan Vorobei. All rights reserved.
//

import UIKit

extension UILabel {
    
    func addShadow() {
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 0.2
    }
}