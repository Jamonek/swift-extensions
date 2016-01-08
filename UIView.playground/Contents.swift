//
//  UIViewExt.swift
//
//  Created by Jamone Alexander Kelly on 1/7/16.
//  Copyright © 2016 Jamone Kelly. All rights reserved.
//

import UIKit
import Foundation

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor {
        get { return UIColor(CGColor: layer.borderColor!) ?? UIColor() }
        set { layer.borderColor = newValue.CGColor }
    }
    
}
