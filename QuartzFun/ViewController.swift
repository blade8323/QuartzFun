//
//  ViewController.swift
//  QuartzFun
//
//  Created by Admin on 31.08.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: UISegmentedControl) {
        let drawingColorSelection = DrawingColor(rawValue: Int(sender.selectedSegmentIndex))
        if let drawingColor = drawingColorSelection {
            let funView = view as! QuartzFunView
            switch drawingColor {
            case .red:
                funView.currentColor = .red
                funView.useRandomColor = false
            case .blue:
                funView.currentColor = .blue
                funView.useRandomColor = false
            case .yellow:
                funView.currentColor = .yellow
                funView.useRandomColor = false
            case .green:
                funView.currentColor = .green
                funView.useRandomColor = false
            case .random:
                funView.useRandomColor = true
            }
        }
    }
    
    @IBAction func changeShape(_ sender: UISegmentedControl) {
        let shapeSelection = Shape(rawValue: Int(sender.selectedSegmentIndex))
        if let shape = shapeSelection {
            let funView = view as! QuartzFunView
            funView.shape = shape
            colorControl.isHidden = (shape == Shape.image)
        }
    }
}

