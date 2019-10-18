//
//  Padding.swift
//  Anchorz
//
//  Created by Michalis Karagiorgos on 18/10/19.
//

import UIKit

public struct Padding {
    public let top: CGFloat?
    public let leading: CGFloat?
    public let trailing: CGFloat?
    public let bottom: CGFloat?
    
    public init(top: CGFloat? = nil, leading: CGFloat? = nil, trailing: CGFloat? = nil, bottom: CGFloat? = nil) {
        self.top = top
        self.leading = leading
        self.trailing = trailing
        self.bottom = bottom
    }
    
    public static let zero = Padding(top: 0, leading: 0, trailing: 0, bottom: 0)
}

extension Padding {
    static public func allSides(_ side: CGFloat) -> Padding {
        return .init(top: side, leading: side, trailing: side, bottom: side)
    }
}
