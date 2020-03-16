//
//  GetSizes.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 16/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import UIKit

class GetSizes: NSObject {

    public class func getTotalWidth() -> CGFloat {
        return (UIApplication.shared.keyWindow?.frame.size.width)!
    }
    
    public class func getTotalHeight() -> CGFloat {
        return (UIApplication.shared.keyWindow?.frame.size.height)!
    }
}
