//
//  UIEdgeInsets+Extensions.swift
//  Anchorz
//
//  Created by Michalis Karagiorgos on 18/10/19.
//

extension UIEdgeInsets {
    static public func allSides(_ side: CGFloat) -> UIEdgeInsets {
        return .init(top: side, left: side, bottom: side, right: side)
    }
}
