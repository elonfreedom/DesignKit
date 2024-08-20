//
//  File.swift
//
//
//  Created by elonfreedom on 2024/8/17.
//

import Foundation
import UIKit


public extension UIFont {
    struct DesignKit {
        public struct OFFont {
            /// 系统默认 34号,加粗
            static var largeBoldTitle: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .boldSystemFont(ofSize: 34)
            /// 系统默认 34号
            static var largeTitle: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .largeTitle) : .systemFont(ofSize: 34)
            /// 系统默认 28号
            static var title1: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title1) : .systemFont(ofSize: 28)
            /// 系统默认  22 号
            static var title2: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title2) : .systemFont(ofSize: 22)
            /// 系统默认 20 号
            static var title3: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .title3) : .systemFont(ofSize: 20)
            /// 系统默认 17 号, 加粗
            static var headline: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .headline) : .boldSystemFont(ofSize: 17)
            /// 系统默认 17 号
            static var body: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .body) : .systemFont(ofSize: 17)
            /// 系统默认 16 号
            static var callout: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .callout) : .systemFont(ofSize: 16)
            /// 系统默认 15 号
            static var subheadline: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .subheadline) : .systemFont(ofSize: 15)
            /// 系统默认 13 号
            static var footnote: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .footnote) : .systemFont(ofSize: 13)
            /// 系统默认 12 号
            static var caption1: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .caption1) : .systemFont(ofSize: 12)
            /// 系统默认 11 号
            static var caption2: UIFont = OFFont.isFollowSystemFont ? .preferredFont(forTextStyle: .caption2) : .systemFont(ofSize: 11)
            // 添加其他字体

            /// 是否跟随系统字体  (adjustsFontForContentSizeCategory 设置为 true)
            static private var isFollowSystemFont: Bool = UserDefaults.standard.bool(forKey: UserDefaults.DesignKit.followSystemFont)
        }
    }
}

extension UserDefaults {
    public struct DesignKit {
        /// 跟随系统字体
        static let followSystemFont = "FollowSystemFont"
    }

}


