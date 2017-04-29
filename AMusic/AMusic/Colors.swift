//
//  Colors.swift
//  MusicA
//
//  Created by Arek on 28.04.2017.
//  Copyright © 2017 Arek. All rights reserved.
//

import UIKit
extension UIColor{
    open class var darkBlue: UIColor{
        get{
            return UIColor.colorComponents((50,35,121));
        }
    }
    open class var darkerBlue: UIColor{
        get{
            return UIColor.colorComponents((26,21,93));
        }
    }
    open class var light: UIColor{
        get{
            return UIColor.colorComponents((88,100,185));
        }
    }
    open class var selected: UIColor{
        get{
            return UIColor.colorComponents((25,183,205));
        }
    }
    open class var background: UIColor{
        get{
            return UIColor.colorComponents((25,33,127));
        }
    }
    open class var lightPink: UIColor{
        get{
            return UIColor.colorComponents((226,71,123));
        }
    }
    open class var darkPink: UIColor{
        get{
            return UIColor.colorComponents((189,59,126));
        }
    }
    open class var textLight: UIColor{
        get{
            return UIColor.colorComponents((104,112,184));
        }
    }
}
private extension UIColor{
    class func colorComponents(_ components: (CGFloat, CGFloat, CGFloat)) -> UIColor{
        return UIColor(red: components.0/255.0, green: components.1/255.0, blue: components.2/255.0, alpha: 1.0);
    }
}
