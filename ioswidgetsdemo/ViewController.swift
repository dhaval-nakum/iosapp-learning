//
//  ViewController.swift
//  ioswidgetsdemo
//
//  Created by Dhaval Nakum on 05/07/24.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var labelText: UILabel!

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var uiDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        stepper.autorepeat = true
        stepper.isContinuous = true
        stepper.maximumValue = 20
        stepper.minimumValue = 0
        
    }
    
    @IBAction func SliderAction(_ sender: UISlider) {
        labelText.text = "The slider value is : \(slider.value*100)"
    }
    @IBAction func stepper(_ sender: Any) {
        labelText.text = "The stepper value is : \(stepper.value)"
    }
}

