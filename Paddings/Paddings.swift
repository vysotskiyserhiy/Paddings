//
//  Paddings.swift
//  Paddings
//
//  Created by Serhiy Vysotskiy on 26.06.2019.
//  Copyright © 2019 Serhiy Vysotskiy. All rights reserved.
//

import UIKit

public extension UIView {
    fileprivate static var _paddings = [String: CGFloat]()
    
    @IBInspectable
    var padding: CGFloat {
        set {
            UIView._paddings[hashValue.description] = newValue
        }
        
        get {
            return UIView._paddings[hashValue.description, default: 0]
        }
    }
    
    func point(inside point: CGPoint) -> Bool {
        return CGRect(x: bounds.origin.x - padding, y: bounds.origin.y - padding, width: bounds.width + 2 * padding, height: bounds.height + 2 * padding).contains(point)
    }
}


// MARK: - Override point(inside:event:)

extension UIButton {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}

extension UIImageView {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}

extension UILabel {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}

extension UITextView {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}

extension UITextField {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}

extension UISwitch {
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if UIView._paddings.keys.contains(hashValue.description) {
            return self.point(inside: point)
        }
        
        return super.point(inside: point, with: event)
    }
}
