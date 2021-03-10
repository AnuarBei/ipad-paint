//
//  Circle.swift
//  Drawing
//
//  Created by Ануар Беисов on 04.03.2021.
//

import Foundation
import UIKit

class Circle : FigureClass {
    
    private var radius: CGFloat = 0.0
    private var circle_center: CGPoint
    
    init( withSome color: UIColor, and strokeWidth: CGFloat, isFilled: Bool,with radius: CGFloat, and circle_center: CGPoint ){
        self.radius = radius
        self.circle_center = circle_center
        super.init(withSome: color, and: strokeWidth, isFilled: isFilled)
        
    }
    override func drawPath(){
        let path = UIBezierPath(arcCenter: circle_center, radius: radius, startAngle: 0, endAngle: 2*Double.pi.cg, clockwise: true)
        path.lineWidth = 3
        color.set()
        (isFilled) ? (path.fill()) : (path.stroke())
    }
}
