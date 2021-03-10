//
//  Line.swift
//  Drawing
//
//  Created by Ануар Беисов on 09.03.2021.
//

import Foundation
import UIKit

class Line : FigureClass {
    
    private var p1: CGPoint
    private var p2: CGPoint
    
    init(withSome color: UIColor, and strokeWidth: CGFloat, isFilled: Bool,with p1: CGPoint, and p2: CGPoint) {
        self.p1 = p1
        self.p2 = p2
        super.init(withSome: color, and: strokeWidth, isFilled: isFilled)
        
    }
    override func drawPath(){
        let path = UIBezierPath()
        path.move(to: p1)
        path.addLine(to: p2)
        path.close()
        
        
        path.lineWidth = 3
        color.set()
        path.stroke()
    }
}
