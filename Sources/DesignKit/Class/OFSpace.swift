//
//  File.swift
//
//
//  Created by elonfreedom on 2024/8/22.
//

import UIKit

public extension CGFloat {
    static var designKit: DesignKit.Type {
        return DesignKit.self
    }

    struct DesignKit {
        public static let twoExtraSmall: CGFloat = 4
        public static let extraSmall: CGFloat = 8
        public static let small: CGFloat = 12
        public static let medium: CGFloat = 18
        public static let large: CGFloat = 24
        public static let extraLarge: CGFloat = 32
        public static let twoExtraLarge: CGFloat = 40
        public static let threeExtraLarge: CGFloat = 48

        public static let spaceZ: CGFloat = 0
        public static let spaceL: CGFloat = 0.5
        public static let spaceX: CGFloat = 10
        public static let space2X: CGFloat = 20
        public static let space4X: CGFloat = 40
        public static let spaceXX: CGFloat = 100

        public static let navBarH: CGFloat = 44
    }

}
