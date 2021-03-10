//
//  ViewController.swift
//  Drawing
//
//  Created by Ануар Беисов on 04.03.2021.
//

import UIKit
enum WhichFigure{
    case Circle
    case Rectangle
    case Line
    case Undo
}
var figureMode = WhichFigure.Circle
var history = [FigureClass]()

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    @IBOutlet weak var myCanvas: CanvasView!
    @IBOutlet weak var undoBtn: UIButton!
    @IBOutlet weak var figuresCollectionView: UICollectionView!
    var items: [UIColor] = [UIColor.red, UIColor.black, UIColor.green, UIColor.blue]
    var figures = [ "circle", "line","pen", "rectangle", "triangle"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        tapGesture.numberOfTapsRequired = 1
        self.undoBtn.addGestureRecognizer(tapGesture)
        figuresCollectionView.delegate = self
        figuresCollectionView.dataSource = self
        let nib = UINib(nibName: "FigureCollectionViewCell", bundle: nil)
        figuresCollectionView.register(nib, forCellWithReuseIdentifier: "figuresCell")
        // Do any additional setup after loading the view.
    }
    @objc func tap() {
            figureMode = WhichFigure.Undo
            myCanvas.setNeedsDisplay()
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return figures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "figuresCell", for: indexPath) as? FigureCollectionViewCell
        
        cell?.figureIV.image = UIImage(named: figures[indexPath.row])
        
        return cell!
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if figures[indexPath.row] == "circle"{
            figureMode = WhichFigure.Circle
        
        }
        else if figures[indexPath.row] == "rectangle"{
            figureMode = WhichFigure.Rectangle
        
        }
        
        else if figures[indexPath.row] == "line"{
            figureMode = WhichFigure.Line
        }
        
       }
    
}

