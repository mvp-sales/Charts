//
//  Platform+Graphics.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import UIKit

enum Orientation
{
    case portrait, landscape
}

extension CGSize
{
    var orientation: Orientation { return width > height ? .landscape : .portrait }
}

extension CGRect
{
    var orientation: Orientation { size.orientation }
}

func NSUIGraphicsGetCurrentContext() -> CGContext?
{
    return UIGraphicsGetCurrentContext()
}

func NSUIGraphicsGetImageFromCurrentImageContext() -> NSUIImage!
{
    return UIGraphicsGetImageFromCurrentImageContext()
}

func NSUIGraphicsPushContext(_ context: CGContext)
{
    UIGraphicsPushContext(context)
}

func NSUIGraphicsPopContext()
{
    UIGraphicsPopContext()
}

func NSUIGraphicsEndImageContext()
{
    UIGraphicsEndImageContext()
}

func NSUIImagePNGRepresentation(_ image: NSUIImage) -> Data?
{
    return image.pngData()
}

func NSUIImageJPEGRepresentation(_ image: NSUIImage, _ quality: CGFloat = 0.8) -> Data?
{
    return image.jpegData(compressionQuality: quality)
}

func NSUIGraphicsBeginImageContextWithOptions(_ size: CGSize, _ opaque: Bool, _ scale: CGFloat)
{
    UIGraphicsBeginImageContextWithOptions(size, opaque, scale)
}
