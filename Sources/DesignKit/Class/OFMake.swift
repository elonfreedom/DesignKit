//
//  File.swift
//  
//
//  Created by elonfreedom on 2024/8/17.
//

import Foundation
import UIKit

public extension UILabel {
    static func make() -> UILabel {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font = .DesignKit.OFFont.subheadline
        label.textColor = .DesignKit.OFColor.textColor
        label.adjustsFontForContentSizeCategory = true
        return label
    }
}

public extension UIImageView {
    static func make() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
}

public extension UIButton {
    static func make() -> UIButton {
        let button = UIButton(type: .custom)
        button.backgroundColor = .clear
        button.titleLabel?.font = .DesignKit.OFFont.subheadline
        button.setTitleColor(.DesignKit.OFColor.textColor, for: .normal)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        return button
    }
}

public extension UITextField {
    static func make() -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = .clear
        textField.font = .DesignKit.OFFont.subheadline
        textField.textColor = .DesignKit.OFColor.textColor
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder != nil ? self.placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
