//
//  LoadingDialog.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 18/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import Foundation

public class LoadingDialog {
    
    static var loaderView: LoadingDialogView!

    class func addView(context: UIViewController) -> LoadingDialogView? {
        if (self.loaderView == nil) {
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
        } else {
            self.loaderView.removeFromSuperview()
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
        }
        
        return loaderView
    }
    
    class func addView(context: UIViewController, withColor color: UIColor, andFont font: UIFont) -> LoadingDialogView {
        if (self.loaderView == nil) {
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
            self.loaderView.setFont(_font: font)
            self.loaderView.setBackgroundColor(_color: color)
        } else {
            self.loaderView.removeFromSuperview()
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
            self.loaderView.setFont(_font: font)
            self.loaderView.setBackgroundColor(_color: color)
        }
        
        return loaderView
    }
    
    class func removeViewIfExist() -> LoadingDialogView? {
        if (self.loaderView == nil) {
            //do nothing here
        } else {
            self.loaderView.removeFromSuperview()
        }
        
        return loaderView
    }
    
    public class func show(context: UIViewController) {
        LoadingDialog.addView(context: context)?.showLoader()
    }
    
    public class func hide(context: UIViewController) {
        LoadingDialog.removeViewIfExist()?.hideLoader()
    }
    
    public class func showLoader(context: UIViewController, withColor color: UIColor, andFont font: UIFont) {
        LoadingDialog.addView(context: context, withColor: color, andFont: font).showLoader()
    }
}
