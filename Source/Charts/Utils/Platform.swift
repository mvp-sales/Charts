import Foundation

import UIKit


public typealias ParagraphStyle = NSParagraphStyle
public typealias MutableParagraphStyle = NSMutableParagraphStyle
public typealias TextAlignment = NSTextAlignment
public typealias NSUIFont = UIFont
public typealias NSUIImage = UIImage
public typealias NSUIScrollView = UIScrollView
public typealias NSUIScreen = UIScreen
public typealias NSUIDisplayLink = CADisplayLink
public typealias NSUIView = UIView

extension NSUIColor
{
    var nsuirgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        guard getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }

        return (red: red, green: green, blue: blue, alpha: alpha)
    }
}

extension NSUIView
{
    @objc var nsuiLayer: CALayer?
    {
        return self.layer
    }
}

extension UIScrollView
{
    @objc var nsuiIsScrollEnabled: Bool
    {
        get { return isScrollEnabled }
        set { isScrollEnabled = newValue }
    }
}

extension UIScreen
{
    @objc final var nsuiScale: CGFloat
    {
        return self.scale
    }
}

func NSUIMainScreen() -> NSUIScreen?
{
    return NSUIScreen.main
}
