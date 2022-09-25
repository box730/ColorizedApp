//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Валерий Дементьев on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var palette: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        palette.layer.cornerRadius = 16
        setValueLabel()
        setBackgroundCollor()
     
    }

    @IBAction func slidersAction() {
        setBackgroundCollor()
        setValueLabel()
    }
    
    private func setBackgroundCollor() {
        palette.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(1)
            )
    }
    private func setValueLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f",blueSlider.value)
    }

}

