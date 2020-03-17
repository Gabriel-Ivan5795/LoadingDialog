//
//  ViewHelper.swift
//  EBD Bud
//
//  Created by Ivan Gabriel on 3/25/19.
//  Copyright © 2019 Roweb. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func centerHorizontally(deviation : NSInteger) {
        let constraint = NSLayoutConstraint(item: self,
                                            attribute: .centerX,
                                            relatedBy: .equal,
                                            toItem: superview,
                                            attribute: .centerX,
                                            multiplier: 1,
                                            constant: CGFloat(deviation))
        superview?.addConstraint(constraint)
        
    }
    
    func centerVertically(deviation : NSInteger) {
        let constraint = NSLayoutConstraint(item: self,
                                            attribute: .centerY,
                                            relatedBy: .equal,
                                            toItem: superview,
                                            attribute: .centerY,
                                            multiplier: 1,
                                            constant: CGFloat(deviation))
        superview?.addConstraint(constraint)
    }
}
