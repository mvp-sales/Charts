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
