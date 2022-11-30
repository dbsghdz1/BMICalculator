//
//  CaculatorBrain.swift
//  BMI Calculator
//
//  Created by 김윤홍 on 2022/11/16.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CaculatorBrain {
    var bmi: BMI?
    
        func getBmiValue() -> String {
            let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiValue
    
    }
   mutating func calculateBmi(height: Float, weight: Float) {
        
       let bmiValue = (weight / (height * height))
       
       if bmiValue < 18.5 {
          bmi = BMI(value: bmiValue, advice: "체중을 증량시켜 보세요!", color: .blue )
       } else if bmiValue < 24.9 {
          bmi = BMI(value: bmiValue, advice: "이대로 유지하십시오!", color: .green)
       } else {
         bmi = BMI(value: bmiValue, advice: "체중을 감량해 보세요", color: .red)
       }
       
    }
    func getAdvice() -> String {
         return bmi?.advice ?? "키와 몸무게를 다시 설정하세요!"
    }
    func getColor() -> UIColor {
         return bmi?.color ?? .white
    }
}
 
