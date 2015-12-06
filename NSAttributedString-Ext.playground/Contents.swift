//: Playground - noun: a place where people can play

import UIKit

extension NSAttributedString {
    
    convenience init?(string text:String, font:UIFont!, kerning: CGFloat!, color:UIColor!) {
        self.init(string: text, attributes: [NSKernAttributeName:kerning, NSFontAttributeName:font, NSForegroundColorAttributeName:color])
    }
}
