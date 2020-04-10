//
//  ViewController.swift
//  TConverter
//
//  Created by Дмитрий on 26.03.2020.
//  Copyright © 2020 BioRobot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBOutlet weak var celsiusLabel:UILabel!
    @IBOutlet weak var fahrenheitLabel:UILabel!
    @IBOutlet weak var slider:UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
          
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider){
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    
    

}

}
