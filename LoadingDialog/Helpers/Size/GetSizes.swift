//
//  GetSizes.swift
//  LoadingDialog
//
//  Created by Ivan Gabriel on 17/03/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import UIKit

class GetSizes: NSObject {

    public class func getTotalWidth() -> CGFloat {
        return (UIApplication.shared.windows.first?.bounds.width)!
    }
    
    public class func getTotalHeight() -> CGFloat {
        return (UIApplication.shared.windows.first?.bounds.height)!
    }
}
