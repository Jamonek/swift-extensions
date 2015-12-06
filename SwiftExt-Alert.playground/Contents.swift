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

// Example Usage
class TestVC: UIViewController {
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.alert("Hello", message: "This is a sample alert controller", actionTitle: "Dismiss")
    }
}
