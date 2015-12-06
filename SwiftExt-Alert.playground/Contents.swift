//: Playground - noun: a place where people can play

import UIKit

extension UIViewController {
    func alert(title: String = "", message: String, actionTitle:String = "OK") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: actionTitle, style: .Default, handler: nil)
        alertController.addAction(OKAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
