LoadingDialog
LoadingDialog is a Mac OS X and iOS framework to show the progress of requests or other processes that need time to execute.

This LoadingDialog framework is hosted at https://cocoapods.org/pods/LoadingDialog.

Install the framework

pod init in terminal
pod 'LoadingDialog' in your Pod file
pod install in terminal

Import the framework

import LoadingFramework

Use the framework

Simple show loader: LoadingDialog.show(context: self)
Show the loader with text,backgroundColor and font: LoadingDialog.showLoader(context: self, withColor: .red, andFont: UIFont.init(name: "Helvetica Bold", size: 16)!)
Hide the loader: LoadingDialog.hide(context: self)