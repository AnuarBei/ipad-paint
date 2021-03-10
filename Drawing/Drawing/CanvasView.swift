//
//  CustomView.swift
//  Drawing
//
//  Created by Ануар Беисов on 04.03.2021.
//

import UIKit

class CanvasView: UIView {
    var point1: CGPoint?
    var point2: CGPoint!
    override func draw(_ rect: CGRect) {
        
        if figureMode == WhichFigure.Circle{
            if let p1 = point1{ let circle = Circle.init( withSome: .black, and: 4, isFilled: true, with: p1.x-point2.x, and: point2)
                circle.drawPath()
                history.append(circle)
                for figure in history {
                    figure.drawPath()
                }
            }
        }
        else if figureMode == WhichFigure.Rectangle{
            if let p1 = point1{ let rectangle = Rectangle.init( withSome: .black, and: 4, isFilled: true, with: p1, and: point2 )
                rectangle.drawPath()
                history.append(rectangle)
                for figure in history {
                    figure.drawPath()
                }
            }
        }
        else if figureMode == WhichFigure.Line{
            if let p1 = point1{ let line = Line.init( withSome: .black, and: 4, isFilled: true, with: p1, and: point2)
                line.drawPath()
                history.append(line)
                for figure in history {
                    figure.drawPath()
                }
            }
        }
        else if figureMode == WhichFigure.Undo{
            point1=nil
            point2=nil
            //if(history.last is Circle)
            history.removeLast()
            for figure in history {
                figure.drawPath()
            }
            figureMode = WhichFigure.Circle
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch =  touches.first{
            
            point1 = touch.location(in: self)
            
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch =  touches.first{
            point2 = touch.location(in: self)
            setNeedsDisplay()
        }
    }
}
extension Double {
    
    var cg: CGFloat {
        
        return CGFloat(self)
    }
}
