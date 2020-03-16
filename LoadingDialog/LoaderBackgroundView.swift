//
//  LoaderBackgroundView.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 16/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import UIKit

class LoaderBackgroundView: UIView {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if (self.superview != nil) {
            self.backgroundColor = .gray
            self.isOpaque = true
            self.layer.opacity = 0.4
            self.layer.cornerRadius = 10
        }
    }
}
