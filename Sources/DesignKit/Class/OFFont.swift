//
//  File.swift
//
//
//  Created by elonfreedom on 2024/8/17.
//

import Foundation
import UIKit


public extension UIFont {

    // 计算属性 `designKit` 返回 `DesignKit.OFFont` 中定义的字体
    static var designKit: DesignKit.OFFont {
        return DesignKit.OFFont()
    }
    struct DesignKit {
        public struct OFFont {
            /// 系统默认 34号,加粗
            public static var largeBoldTitle: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .boldSystemFont(ofSize: 34)
            /// 系统默认 34号
            public static var largeTitle: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .systemFont(ofSize: 34)
            /// 系统默认 28号
            public static var title1: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title1) : .systemFont(ofSize: 28)
            /// 系统默认  22 号
            public static var title2: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title2) : .systemFont(ofSize: 22)
            /// 系统默认 20 号
            public static var title3: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title3) : .systemFont(ofSize: 20)
            /// 系统默认 17 号, 加粗
            public static var headline: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .headline) : .boldSystemFont(ofSize: 17)
            /// 系统默认 17 号
            public static var body: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .body) : .systemFont(ofSize: 17)
            /// 系统默认 16 号
            public static var callout: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .callout) : .systemFont(ofSize: 16)
            /// 系统默认 15 号
            public static var subheadline: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .subheadline) : .systemFont(ofSize: 15)
            /// 系统默认 13 号
            public static var footnote: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .footnote) : .systemFont(ofSize: 13)
            /// 系统默认 12 号
            public static var caption1: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .caption1) : .systemFont(ofSize: 12)
            /// 系统默认 11 号
            public static var caption2: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .caption2) : .systemFont(ofSize: 11)
            // 添加其他字体

            /// 是否跟随系统字体  (adjustsFontForContentSizeCategory 设置为 true)
            static private var isFollowSystemFont: Bool = UserDefaults.standard.bool(forKey: UserDefaults.DesignKit.OFUserDefaults.followSystemFont)
        }
    }
}

public extension UserDefaults {
    static var designKit: DesignKit.OFUserDefaults {
        return DesignKit.OFUserDefaults()
    }
    struct DesignKit {
        public struct OFUserDefaults {
            /// 跟随系统字体
            public static let followSystemFont = "FollowSystemFont"

        }
    }

}


