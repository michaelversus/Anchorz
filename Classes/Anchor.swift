//
//  Anchor.swift
//  Anchorz
//
//  Created by Michalis Karagiorgos on 18/10/19.
//

import UIKit

public enum Anchor {
    case top(_ top: NSLayoutYAxisAnchor, constant: CGFloat)
    case leading(_ leading: NSLayoutXAxisAnchor, constant: CGFloat)
    case bottom(_ bottom: NSLayoutYAxisAnchor, constant: CGFloat)
    case trailing(_ trailing: NSLayoutXAxisAnchor, constant: CGFloat)
    case height(_ constant: CGFloat)
    case equalHeight(_ anchor: NSLayoutDimension)
    case percentHeight(_ anchor: NSLayoutDimension, multiplier: CGFloat)
    case width(_ constant: CGFloat)
    case equalWidth(_ anchor: NSLayoutDimension)
    case percentWidth(_ anchor: NSLayoutDimension, multiplier: CGFloat)
    case size(width: CGFloat, height: CGFloat)
    case stickyTop(_ top: NSLayoutYAxisAnchor)
    case stickyLeading(_ leading: NSLayoutXAxisAnchor)
    case stickyBottom(_ bottom: NSLayoutYAxisAnchor)
    case stickyTrailing(_ trailing: NSLayoutXAxisAnchor)
    case fillSuperview(padding: Padding)
    case fillSuperviewSafeAreaLayoutGuide(padding: Padding)
    case centerX(_ anchor: NSLayoutXAxisAnchor)
    case centerY(_ anchor: NSLayoutYAxisAnchor)
    case centerXToSuperview
    case centerYToSuperview
    case centerToSuperview
}
