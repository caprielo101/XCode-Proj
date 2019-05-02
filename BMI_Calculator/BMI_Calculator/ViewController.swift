//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Josiah Elisha on 24/04/19.
//  Copyright © 2019 Josiah Elisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelCollections: [UILabel]!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var HeightLabel: UILabel!

    @IBOutlet weak var BMIValue: UILabel!
    @IBOutlet weak var BMICategories: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HeightSlider.value = 1.7
        WeightSlider.value = 80
        HeightLabel.text = String(HeightSlider.value)
        WeightLabel.text = String(WeightSlider.value)
    }
    
    @IBAction func DarkModeControl(_ sender: Any) {
        switch  segmentedControl.selectedSegmentIndex{
        case 0:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            for label in labelCollections {
                label.textColor = UIColor.black
            }
        case 1:
            self.view.backgroundColor = UIColor.black
            for label in labelCollections {
                label.textColor = UIColor.white
            }
        default:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            for label in labelCollections {
                label.textColor = UIColor.black
            }
        }
        
    }
    @IBAction func WeightSliderValueChanged(_ sender: Any) {
        WeightLabel.text = String(format:"%.2f kg" ,WeightSlider.value)
        
        BMIValue.text = String(format:"%.2f kg/m2" ,calculateBMI(weight: WeightSlider.value, height: HeightSlider.value))
        
        BMICategories.text = categoryMaker(bmi: calculateBMI(weight: WeightSlider.value, height: HeightSlider.value))
        
        if(BMICategories.text == "Obesity"){
            BMICategories.textColor = UIColor.red
        } else if(BMICategories.text == "Overweight"){
            BMICategories.textColor = UIColor.orange
        } else if(BMICategories.text == "Normal Weight"){
            BMICategories.textColor = UIColor.green
        } else {
            BMICategories.textColor = UIColor.yellow
        }
    }
    @IBAction func HeightSliderValueChanged(_ sender: Any) {
        HeightLabel.text = String(format:"%.2f m" ,HeightSlider.value)
        BMIValue.text = String(format:"%.2f kg/m2" ,calculateBMI(weight: WeightSlider.value, height: HeightSlider.value))
        BMICategories.text = categoryMaker(bmi: calculateBMI(weight: WeightSlider.value, height: HeightSlider.value))
        if(BMICategories.text == "Obesity"){
            BMICategories.textColor = UIColor.red
        } else if(BMICategories.text == "Overweight"){
            BMICategories.textColor = UIColor.orange
        } else if(BMICategories.text == "Normal Weight"){
            BMICategories.textColor = UIColor.green
        } else {
            BMICategories.textColor = UIColor.yellow
        }
    }
    
    func calculateBMI(weight: Float, height: Float) -> Float {
        let bmi = weight/(height*height)
        return bmi
    }
    
    func categoryMaker(bmi:Float) -> String{
        switch bmi {
        case ..<18.5:
            return "Underweight"
        case 18.5...24.9:
            return "Normal Weight"
        case 25...29.9:
            return "Overweight"
        case 30...:
            return "Obesity"
        default:
            return "None"
        }
    }
    
}

