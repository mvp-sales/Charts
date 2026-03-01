//
//  Platform+Touch Handling.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import UIKit

public typealias NSUIEvent = UIEvent
public typealias NSUITouch = UITouch

@objc
extension NSUIView {
    public final override func touchesBegan(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
    {
        self.nsuiTouchesBegan(touches, withEvent: event)
    }

    public final override func touchesMoved(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
    {
        self.nsuiTouchesMoved(touches, withEvent: event)
    }

    public final override func touchesEnded(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
    {
        self.nsuiTouchesEnded(touches, withEvent: event)
    }

    public final override func touchesCancelled(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
    {
        self.nsuiTouchesCancelled(touches, withEvent: event)
    }

    open func nsuiTouchesBegan(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
    {
        super.touchesBegan(touches, with: event!)
    }

    open func nsuiTouchesMoved(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
    {
        super.touchesMoved(touches, with: event!)
    }

    open func nsuiTouchesEnded(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
    {
        super.touchesEnded(touches, with: event!)
    }

    open func nsuiTouchesCancelled(_ touches: Set<NSUITouch>?, withEvent event: NSUIEvent?)
    {
        super.touchesCancelled(touches!, with: event!)
    }
}

extension UIView
{
    @objc final var nsuiGestureRecognizers: [NSUIGestureRecognizer]?
    {
        return self.gestureRecognizers
    }
}
