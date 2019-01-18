//
//  BackgroundColorView.swift
//  Example-OSX
//
//  Created by Chris on 18/01/2019.
//  Copyright © 2019 Christoffer Winterkvist. All rights reserved.
//

import Cocoa

@IBDesignable
class BackgroundColorView: NSView {

    @IBInspectable
    var color: NSColor = .white {
        didSet {
            layer?.backgroundColor = color.cgColor
        }
    }

    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer?.cornerRadius = cornerRadius
        }
    }

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        self.wantsLayer = true
    }

    override func prepareForInterfaceBuilder() {
        layer?.backgroundColor = color.cgColor
        layer?.cornerRadius = cornerRadius
    }

    override func awakeFromNib() {
        layer?.backgroundColor = color.cgColor
        layer?.cornerRadius = cornerRadius
    }

    override func updateLayer() {
        layer?.backgroundColor = color.cgColor
        layer?.cornerRadius = cornerRadius
    }
}
