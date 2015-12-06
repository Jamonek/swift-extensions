//: Playground - noun: a place where people can play

import UIKit


extension String {
    
    func toAttributedString(font font:UIFont!, kerning: CGFloat!, color:UIColor!) -> NSAttributedString {
        return NSAttributedString(string: self as String, font: font, kerning: kerning, color: color)!
    }
}

extension NSAttributedString {
    
    convenience init?(string text:String, font:UIFont!, kerning: CGFloat!, color:UIColor!) {
        self.init(string: text, attributes: [NSKernAttributeName:kerning, NSFontAttributeName:font, NSForegroundColorAttributeName:color])
    }
}

// Example Usage
var testString: String = "Hello World"

var testAttributedString: NSAttributedString = testString.toAttributedString(font: UIFont.boldSystemFontOfSize(20), kerning: 2.0, color: UIColor.whiteColor())

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let label = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 20))

label.attributedText = testAttributedString
view.addSubview(label)

