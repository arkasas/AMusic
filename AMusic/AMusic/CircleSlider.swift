//
//  CircleSlider.swift
//  MusicA
//
//  Created by Arek on 29.04.2017.
//  Copyright © 2017 Arek. All rights reserved.
//

import UIKit

@IBDesignable
class CircleSlider: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.darkerBlue;
    @IBInspectable var circleRadius: CGFloat = 100.0;
    @IBInspectable var margin: CGFloat = 20.0;
    @IBInspectable var bottomMargin: CGFloat = 10.0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    override init(frame: CGRect) {
        super.init(frame: frame);
    }
    override func draw(_ rect: CGRect) {
        self.addCircle(self.bounds.width - margin, capRadius: 20, color: self.firstColor);
    }
    func addCircle(_ arcRadius: CGFloat, capRadius: CGFloat, color: UIColor){
        let X: CGFloat = self.bounds.midX;
        let Y: CGFloat = self.bounds.size.height - bottomMargin;
        
//        let pathMiddle = UIBezierPath(ovalIn: CGRect(x: (X-(capRadius/2)) - arcRadius/2, y: (Y-(capRadius/2)), width: capRadius, height: capRadius)).cgPath;
//        self.addOval(0, path: pathMiddle, strokeStart: 1, strokeEnd: 1, strokeColor: color, fillColor: color, shadowRadius: 5.0, shadowOpacity: 0.5, shadowOffest: CGSize.zero);

        let pathTop = UIBezierPath(ovalIn: CGRect(x: (X-(arcRadius/2)), y: (Y-(arcRadius/2)), width: arcRadius, height: arcRadius)).cgPath;
        self.addOval(10, path: pathTop, strokeStart: 0.52, strokeEnd: 0.98, strokeColor: color, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffest: CGSize.zero);

    }
    func addOval(_ lineWidth: CGFloat, path: CGPath, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffest: CGSize){
        let arc = CAShapeLayer();
        arc.lineWidth = lineWidth;
        arc.path = path;
        arc.strokeStart = strokeStart;
        arc.strokeEnd = strokeEnd;
        arc.strokeColor = strokeColor.cgColor;
        arc.fillColor = fillColor.cgColor
        arc.shadowColor = UIColor.black.cgColor;
        arc.shadowRadius = shadowRadius;
        arc.shadowOpacity = shadowOpacity;
        arc.shadowOffset = shadowOffest;
        layer.addSublayer(arc);
    }
}
