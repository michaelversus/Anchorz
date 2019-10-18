//
//  UIView+Extensions.swift
//  Anchorz
//
//  Created by Michalis Karagiorgos on 18/10/19.
//

import UIKit

extension UIView {
    
    @discardableResult
    public func constraint(_ anchors: Anchor...) -> AnchoredConstraints {
        translatesAutoresizingMaskIntoConstraints = false
        var anchoredConstraints = AnchoredConstraints()
        anchors.forEach { anchor in
            switch anchor {
            case .top(let anchor, let constant):
                anchoredConstraints.top = topAnchor.constraint(equalTo: anchor, constant: constant)
            case .stickyTop(let anchor):
                anchoredConstraints.top = topAnchor.constraint(equalTo: anchor)
            case .leading(let anchor, let constant):
                anchoredConstraints.leading = leadingAnchor.constraint(equalTo: anchor, constant: constant)
            case .stickyLeading(let anchor):
                anchoredConstraints.leading = leadingAnchor.constraint(equalTo: anchor)
            case .bottom(let anchor, let constant):
                anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: anchor, constant: -constant)
            case .stickyBottom(let anchor):
                anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: anchor)
            case .trailing(let anchor, let constant):
                anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: anchor, constant: -constant)
            case .stickyTrailing(let anchor):
                anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: anchor)
            case .height(let constant):
                if constant > 0 {
                    anchoredConstraints.height = heightAnchor.constraint(equalToConstant: constant)
                }
            case .equalHeight(let anchor):
                anchoredConstraints.height = heightAnchor.constraint(equalTo: anchor)
            case .percentHeight(let anchor, let multiplier):
                anchoredConstraints.height = heightAnchor.constraint(equalTo: anchor, multiplier: multiplier)
            case .width(let constant):
                if constant > 0 {
                    anchoredConstraints.width = widthAnchor.constraint(equalToConstant: constant)
                }
            case .equalWidth(let anchor):
                anchoredConstraints.width = widthAnchor.constraint(equalTo: anchor)
            case .percentWidth(let anchor, let multiplier):
                anchoredConstraints.width = widthAnchor.constraint(equalTo: anchor, multiplier: multiplier)
            case .size(let width, let height):
                if width > 0 && height > 0 {
                    anchoredConstraints.width = widthAnchor.constraint(equalToConstant: width)
                    anchoredConstraints.height = heightAnchor.constraint(equalToConstant: height)
                }
            case .fillSuperview(let padding):
                anchoredConstraints = fillSuperview(padding: padding)
            case .fillSuperviewSafeAreaLayoutGuide(let padding):
                anchoredConstraints = fillSuperviewSafeAreaLayoutGuide(padding: padding)
            case .centerX(let anchor):
                anchoredConstraints.centerX = centerXAnchor.constraint(equalTo: anchor)
            case .centerY(let anchor):
                anchoredConstraints.centerY = centerYAnchor.constraint(equalTo: anchor)
            case .centerXToSuperview:
                anchoredConstraints.centerX = centerXToSuperview()
            case .centerYToSuperview:
                anchoredConstraints.centerY = centerYToSuperview()
            case .centerToSuperview:
                anchoredConstraints.centerX = centerXToSuperview()
                anchoredConstraints.centerY = centerYToSuperview()
            }
        }
        [anchoredConstraints.top,
         anchoredConstraints.leading,
         anchoredConstraints.bottom,
         anchoredConstraints.trailing,
         anchoredConstraints.width,
         anchoredConstraints.height,
         anchoredConstraints.centerX,
         anchoredConstraints.centerY].forEach {
            $0?.isActive = true
        }
        return anchoredConstraints
    }
    
    @discardableResult
    fileprivate func fillSuperview(padding: Padding = .zero) -> AnchoredConstraints {
        var anchoredConstraints = AnchoredConstraints()
        guard let superviewTopAnchor = superview?.topAnchor,
            let superviewBottomAnchor = superview?.bottomAnchor,
            let superviewLeadingAnchor = superview?.leadingAnchor,
            let superviewTrailingAnchor = superview?.trailingAnchor else {
                return anchoredConstraints
        }
        if let topPadding = padding.top {
            anchoredConstraints.top = topAnchor.constraint(equalTo: superviewTopAnchor, constant: topPadding)
        }
        if let leadingPadding = padding.leading {
            anchoredConstraints.leading = leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: leadingPadding)
        }
        if let bottomPadding = padding.bottom {
            anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -bottomPadding)
        }
        if let trailingPadding = padding.trailing {
            anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -trailingPadding)
        }
        return anchoredConstraints
    }
    
    fileprivate func fillSuperviewSafeAreaLayoutGuide(padding: Padding = .zero) -> AnchoredConstraints {
        var anchoredConstraints = AnchoredConstraints()
        if #available(iOS 11.0, *) {
            guard let superviewTopAnchor = superview?.safeAreaLayoutGuide.topAnchor,
                let superviewBottomAnchor = superview?.safeAreaLayoutGuide.bottomAnchor,
                let superviewLeadingAnchor = superview?.safeAreaLayoutGuide.leadingAnchor,
                let superviewTrailingAnchor = superview?.safeAreaLayoutGuide.trailingAnchor else {
                    return anchoredConstraints
            }
            if let topPadding = padding.top {
                anchoredConstraints.top = topAnchor.constraint(equalTo: superviewTopAnchor, constant: topPadding)
            }
            if let leadingPadding = padding.leading {
                anchoredConstraints.leading = leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: leadingPadding)
            }
            if let bottomPadding = padding.bottom {
                anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -bottomPadding)
            }
            if let trailingPadding = padding.trailing {
                anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -trailingPadding)
            }
            return anchoredConstraints
        } else {
            return anchoredConstraints
        }
    }
    
    fileprivate func centerXToSuperview() -> NSLayoutConstraint? {
        guard let superviewCenterXAnchor = superview?.centerXAnchor else { return nil }
        return centerXAnchor.constraint(equalTo: superviewCenterXAnchor)
    }
    
    fileprivate func centerYToSuperview()  -> NSLayoutConstraint? {
        guard let superviewCenterYAnchor = superview?.centerYAnchor else { return nil }
        return centerYAnchor.constraint(equalTo: superviewCenterYAnchor)
    }
    
    convenience public init(backgroundColor: UIColor = .clear) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
    }
}
