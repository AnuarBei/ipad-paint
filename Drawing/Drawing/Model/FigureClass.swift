//
//  FigureClass.swift
//  Drawing
//
//  Created by Ануар Беисов on 09.03.2021.
//

import Foundation
import UIKit

class FigureClass{
    var color: UIColor
    var strokeWidth: CGFloat = 0.0
    var isFilled:Bool
    
    init(withSome color:UIColor, and strokeWidth: CGFloat, isFilled: Bool){
        self.color = color
        self.strokeWidth = strokeWidth
        self.isFilled = isFilled
    }
    func drawPath(){}
}
