//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Moe Chaker on 10/27/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        var adviceString: String = ""
        var bgColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        if(bmiValue < 18.5){
            adviceString = "Eat more pies!"
            bgColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else if(bmiValue > 24.9){
            adviceString = "Overweight"
            bgColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else {
            adviceString = "Fit as a fiddle!"
            bgColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: adviceString, color: bgColor)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
