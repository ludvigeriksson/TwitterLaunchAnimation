//
//  SPExtenshionView.swift
//  reincarnation
//
//  Created by Ivan Vorobei on 6/30/16.
//  Copyright © 2016 Ivan Vorobei. All rights reserved.
//

import UIKit

extension UIView {
    
    func convertToImage() -> UIImage {
        return UIImage.drawFromView(view: self)
    }
}

