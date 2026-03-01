//
//  Description.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics
import UIKit

@objc(ChartDescription)
open class Description: ComponentBase
{
    public override init()
    {
        font = .systemFont(ofSize: 8.0)
        
        super.init()
    }
    
    /// The text to be shown as the description.
    @objc open var text: String?
    
    /// Custom position for the description text in pixels on the screen.
    open var position: CGPoint? = nil
    
    /// The text alignment of the description text. Default RIGHT.
    @objc open var textAlign: TextAlignment = TextAlignment.right
    
    /// Font object used for drawing the description text.
    @objc open var font: NSUIFont
    
    /// Text color used for drawing the description text
    @objc open var textColor = NSUIColor.labelOrBlack
}
