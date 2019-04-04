//
//  CustomButton.swift
//  CalculatorApp
//
//  Created by mac on 4/2/19.
//  Copyright © 2019 sunasterisk. All rights reserved.
//

import UIKit

extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var leadingSpace: CGFloat {
        get {
            return self.contentEdgeInsets.left
        }
        set {
            self.contentEdgeInsets = UIEdgeInsets(top: 0, left: newValue * self.frame.width - 8, bottom: 0, right: 0)
        }
    }
}
