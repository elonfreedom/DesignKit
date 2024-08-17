//
//  File.swift
//
//
//  Created by elonfreedom on 2024/8/17.
//

import Foundation
import UIKit

extension UIColor {
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
    ///   - lightColor: <#lightColor description#>
    ///   - darkColor: <#darkColor description#>
    /// - Returns: color
    static func dynamicColor(lightColor: UIColor, darkColor: UIColor? = nil) -> UIColor {
        return UIColor { (traits) -> UIColor in
            guard traits.userInterfaceStyle == .dark else {
                return lightColor
            }
            return darkColor ?? lightColor
        }
    }

    public struct DesignKit {
        public struct OFColor {

            public static let primaryColor = UIColor.dynamicColor(lightColor: .blue)

            /// 文字颜色 333333
            public static let textColor = UIColor.dynamicColor(lightColor: UIColor(0x333333))

            /// 次文字颜色 666666
            public static let subTextColor = UIColor.dynamicColor(lightColor: UIColor(0x666666))

            /// 提醒文字颜色 999999
            public static let tipTextColor = UIColor.dynamicColor(lightColor: UIColor(0x999999))
            
            // 添加其他颜色
        }
    }
}


