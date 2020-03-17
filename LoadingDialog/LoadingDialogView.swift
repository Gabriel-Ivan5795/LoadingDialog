//
//  LoadingDialogView.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 16/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import UIKit

public class LoadingDialogView: UIView {
    
    private var backgroundView = LoaderBackgroundView()
    private var loader = UIActivityIndicatorView()
    private var label = UILabel()
    
//    public init(_position: String, _backgroundColor: UIColor) {
//        switch _position {
//        case "center":
//            self.frame = CGRect.init(x: (GetSizes.getTotalWidth() - 100) / 2 , y: (GetSizes.getTotalHeight() - 100) / 2, width: 100, height: 100)
//            break
//        default:
//            self.frame = CGRect.init(x: (GetSizes.getTotalWidth() - 100) / 2 , y: (GetSizes.getTotalHeight() - 100) / 2, width: 100, height: 100)
//            break
//        }
//    }
    
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
            
            self.loader.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(self.loader)
            self.loader.color = .black
            
            self.label.translatesAutoresizingMaskIntoConstraints = false
            self.label.textColor = .black
            self.addSubview(self.label)
            self.label.text = "Please wait..."
            self.label.textAlignment = .center
            self.label.font = UIFont.init(name: "Helvetica Bold", size: 10)
            
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: [], metrics: nil, views: ["v0":self.backgroundView]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: [], metrics: nil, views: ["v0":self.backgroundView]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(50)]", options: [], metrics: nil, views: ["v0":self.loader]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: [], metrics: nil, views: ["v0":self.label]))
            self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-6-[v0(50)]-18-[v1(20)]-6-|", options: [], metrics: nil, views: ["v0":self.loader,"v1":self.label]))
            self.loader.centerHorizontally(deviation: 1)
            
            self.hideLoader()
        }
    }
    
    public func showLoader() {
        self.isHidden = false
        self.loader.startAnimating()
    }
    
    public func hideLoader() {
        self.isHidden = true
        self.loader.stopAnimating()
    }
}
