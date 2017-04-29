//
//  Image.swift
//  MusicA
//
//  Created by Arek on 28.04.2017.
//  Copyright © 2017 Arek. All rights reserved.
//

import UIKit

extension UIImage{
    class func imageWithColor(_ color: UIColor, size: CGSize) -> UIImage{
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
