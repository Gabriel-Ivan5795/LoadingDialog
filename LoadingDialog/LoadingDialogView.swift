//
//  LoadingDialogView.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 16/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import UIKit
import QuartzCore

public class LoadingDialogView: UIView {
    
    private var backgroundView = LoaderBackgroundView()
    private var spinner = LoaderView()
    private var label = UILabel()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if (self.superview != nil) {
            self.backgroundView.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(self.backgroundView)
            
            self.spinner.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(self.spinner)
            
            self.label.translatesAutoresizingMaskIntoConstraints = false
            self.label.textColor = .black
            self.addSubview(self.label)
            self.label.text = "Please wait..."
            self.label.textAlignment = .center
            self.label.font = UIFont.init(name: "Helvetica Bold", size: 16)
            
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: [], metrics: nil, views: ["v0":self.backgroundView]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: [], metrics: nil, views: ["v0":self.backgroundView]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(89)]", options: [], metrics: nil, views: ["v0":self.spinner]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: [], metrics: nil, views: ["v0":self.label]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-30-[v0(89)]-30-[v1(21)]-30-|", options: [], metrics: nil, views: ["v0":self.spinner,"v1":self.label]))
            self.spinner.centerHorizontally(deviation: 1)
            
            self.hideLoader()
        }
    }
    
    public func showLoader() {
        self.isHidden = false
    }
    
    public func hideLoader() {
        self.isHidden = true
    }
    
    public func setFont(_font: UIFont) {
        self.label.font = _font
    }
    
    public func setBackgroundColor(_color: UIColor) {
        self.backgroundView.backgroundColor = _color
    }
}
