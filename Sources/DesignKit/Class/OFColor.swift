//
//  File.swift
//
//
//  Created by elonfreedom on 2024/8/17.
//

import UIKit

public extension UIColor {
    /// 使用rgb方式生成自定义颜色
    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat = 1.0) {
        let red = r / 255.0
        let green = g / 255.0
        let blue = b / 255.0
        self.init(red: red, green: green, blue: blue, alpha: a)
    }

    /// 使用hex数值方式生成自定义颜色
    convenience init(_ valueRGB: UInt64, _ alpha: CGFloat? = 1.0) {
        self.init(
            red: CGFloat((valueRGB & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((valueRGB & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(valueRGB & 0x0000FF) / 255.0,
            alpha: alpha ?? 1.0
        )
    }

    ///  暗黑模式
    /// - Parameters:
    ///   - lightColor
    ///   - darkColor:
    /// - Returns: color
    static func dynamicColor(by light: UIColor, dark: UIColor? = nil) -> UIColor {
        return UIColor { $0.userInterfaceStyle == .light ? light : dark ?? light }
    }

    static var designKit: DesignKit.Type {
        return DesignKit.self
    }

    enum DesignKit {
        
        /// 主题色
        public static let primaryColor = UIColor.dynamicColor(by: UIColor(0x0770e3))

        /// 文字颜色 333333
        public static let textColor = UIColor.dynamicColor(by: UIColor(0x333333))

        /// 次文字颜色 666666
        public static let subTextColor = UIColor.dynamicColor(by: UIColor(0x666666))

        /// 提醒文字颜色 999999
        public static let tipTextColor = UIColor.dynamicColor(by: UIColor(0x999999))
        
        /// 背景色
        public static let backgroundColor = UIColor.dynamicColor(by: UIColor(0xf5f5f5))
        
        /// 次背景
        public static let subBackgroundColor = UIColor.dynamicColor(by: UIColor(0xffffff))
        
        /// 不可用颜色
        public static let disableColor: UIColor = dynamicColor(by: UIColor(0xE6E6E7))
        
        /// 活跃色
        public static let activeColor: UIColor = dynamicColor(by: UIColor(0x1677FF))
        
        /// 警告色
        public static let dangerColor: UIColor = dynamicColor(by: UIColor(0xFE4C44))

    }
}


