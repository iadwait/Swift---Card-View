//
//  CardView.swift
//  Card View
//
//  Created by Adwait Barkale on 25/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView : UIView {

    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var offsetWidth: CGFloat = 5 //0 Make width height 0,1 to apply shadow on all sides.
    @IBInspectable var offsetHeight: CGFloat = 5 //1
    @IBInspectable var offsetShadow: CGFloat = 5
    
    @IBInspectable var offsetShadowOpacity:Float = 5
    @IBInspectable var color: UIColor = UIColor.systemGray4
    
    let shadowSize: CGFloat = 5
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornerRadius
        layer.shadowColor = self.color.cgColor
        layer.shadowOffset = CGSize(width: self.offsetWidth, height: self.offsetHeight)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
        
//        layer.shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
//                                                   y: -shadowSize / 2,
//                                                   width: self.frame.size.width + shadowSize,
//            height: self.frame.size.height + shadowSize)).cgPath
        
        layer.shadowOpacity = self.offsetShadowOpacity
    }
    
}
