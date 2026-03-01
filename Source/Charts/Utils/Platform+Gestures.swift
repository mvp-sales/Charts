//
//  Platform+Gestures.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

// MARK: - UIKit
import UIKit

public typealias NSUIGestureRecognizer = UIGestureRecognizer
public typealias NSUIGestureRecognizerState = UIGestureRecognizer.State
public typealias NSUIGestureRecognizerDelegate = UIGestureRecognizerDelegate
public typealias NSUITapGestureRecognizer = UITapGestureRecognizer
public typealias NSUIPanGestureRecognizer = UIPanGestureRecognizer

extension NSUITapGestureRecognizer
{
    @objc final func nsuiNumberOfTouches() -> Int
    {
        return numberOfTouches
    }

    @objc final var nsuiNumberOfTapsRequired: Int
        {
        get
        {
            return self.numberOfTapsRequired
        }
        set
        {
            self.numberOfTapsRequired = newValue
        }
    }
}

extension NSUIPanGestureRecognizer
{
    @objc final func nsuiNumberOfTouches() -> Int
    {
        return numberOfTouches
    }

    @objc final func nsuiLocationOfTouch(_ touch: Int, inView: UIView?) -> CGPoint
    {
        return super.location(ofTouch: touch, in: inView)
    }
}

public typealias NSUIPinchGestureRecognizer = UIPinchGestureRecognizer
public typealias NSUIRotationGestureRecognizer = UIRotationGestureRecognizer

extension NSUIRotationGestureRecognizer
{
    @objc final var nsuiRotation: CGFloat
        {
        get { return rotation }
        set { rotation = newValue }
    }
}

extension NSUIPinchGestureRecognizer
{
    @objc final var nsuiScale: CGFloat
        {
        get
        {
            return scale
        }
        set
        {
            scale = newValue
        }
    }

    @objc final func nsuiLocationOfTouch(_ touch: Int, inView: UIView?) -> CGPoint
    {
        return super.location(ofTouch: touch, in: inView)
    }
}
