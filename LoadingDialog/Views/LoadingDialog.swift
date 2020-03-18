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
    var originalKeyWindow: UIWindow!
    var progressWindow: UIWindow!

    class func sharedView(context: UIViewController) -> LoadingDialogView? {

        if (self.loaderView == nil) {
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
        } else {
            self.loaderView.removeFromSuperview()
            self.loaderView = nil
        }
        
        return loaderView
    }
    
    class func sharedLoaderView(context: UIViewController, withColor color: UIColor, andFont font: UIFont) -> LoadingDialogView? {

        if (self.loaderView == nil) {
            self.loaderView = LoadingDialogView.init(frame: CGRect.init(x: (GetSizes.getTotalWidth() - 200) / 2, y: (GetSizes.getTotalHeight() - 200) / 2, width: 200, height: 200))
            context.view.addSubview(self.loaderView)
            self.loaderView.setFont(_font: font)
            self.loaderView.setBackgroundColor(_color: color)
        } else {
            self.loaderView.removeFromSuperview()
            self.loaderView = nil
        }
        
        return loaderView
    }

    
    public class func show(context: UIViewController) {
        LoadingDialog.sharedView(context: context)?.showLoader()
    }
    
    public class func hide(context: UIViewController) {
        LoadingDialog.sharedView(context: context)?.hideLoader()
    }
    
    public class func showLoader(context: UIViewController, withColor color: UIColor, andFont font: UIFont) {
        LoadingDialog.sharedLoaderView(context: context, withColor: color, andFont: font)?.showLoader()
    }
}
