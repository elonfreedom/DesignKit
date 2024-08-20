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
    static var designKit: DesignKit.Type {
        return DesignKit.self
    }
    struct DesignKit {
        /// 系统默认 34号,加粗
        public static var largeBoldTitle: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .boldSystemFont(ofSize: 34)
        /// 系统默认 34号
        public static var largeTitle: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .systemFont(ofSize: 34)
        /// 系统默认 28号
        public static var title1: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .title1) : .systemFont(ofSize: 28)
        /// 系统默认  22 号
        public static var title2: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .title2) : .systemFont(ofSize: 22)
        /// 系统默认 20 号
        public static var title3: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .title3) : .systemFont(ofSize: 20)
        /// 系统默认 17 号, 加粗
        public static var headline: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .headline) : .boldSystemFont(ofSize: 17)
        /// 系统默认 17 号
        public static var body: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .body) : .systemFont(ofSize: 17)
        /// 系统默认 16 号
        public static var callout: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .callout) : .systemFont(ofSize: 16)
        /// 系统默认 15 号
        public static var subheadline: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .subheadline) : .systemFont(ofSize: 15)
        /// 系统默认 13 号
        public static var footnote: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .footnote) : .systemFont(ofSize: 13)
        /// 系统默认 12 号
        public static var caption1: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .caption1) : .systemFont(ofSize: 12)
        /// 系统默认 11 号
        public static var caption2: UIFont = isFollowSystemFont ? .preferredFont(forTextStyle: .caption2) : .systemFont(ofSize: 11)
        // 添加其他字体

        /// 是否跟随系统字体  (adjustsFontForContentSizeCategory 设置为 true)
        static private var isFollowSystemFont: Bool = UserDefaults.standard.bool(forKey: UserDefaults.DesignKit.followSystemFont)
    }
}

public extension UserDefaults {
    static var designKit: DesignKit {
        return DesignKit()
    }
    struct DesignKit {
        /// 跟随系统字体
        public static let followSystemFont = "FollowSystemFont"

    }

}


