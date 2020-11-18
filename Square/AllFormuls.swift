//
//  AllFormuls.swift
//  Square
//
//  Created by Shakhvorostov on 16/07/2019.
//  Copyright © 2019  ShMichail. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func doubleRound(value: Double) -> Double{
        let resultRound = round(value*1000)/1000
        return resultRound
    }
    
    func valueString(value: UITextField?) -> Double {
        let newValue = value?.text!.replacingOccurrences(of: ",", with: ".")
        let resultString: Double = (newValue! as NSString).doubleValue
        
        return resultString
    }
    
    func angleTranslation(angle: Double)-> Double {
        
        let angleTranslation = (angle * Double.pi) / 180
        return angleTranslation
    }
    
    func guardFunction(textField: UITextField?, nameText: String) -> Bool {
        var variableText = true
        guard textField!.text != "" else {
            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение \(nameText)", style: AlertStyle.error)
            self.view.endEditing(true)
            variableText = false
            return variableText
        }
        return variableText
    }
    
    func listFormulsOneValue(textField: UITextField?=nil, nameText: String, formuls: Int){
        
        var textFormuls: String = ""
        var result: Double = 0.0
        
        let value = valueString(value: textField)
        
        switch formuls {
        case 1:
            result = (Double.pi / 4) * pow(value, 2)
            textFormuls = "Площадь круга равна \n \n S = (π/4) · d² \n \n S = (π/4) · \(doubleRound(value: value))² = \(doubleRound(value: result))"
        case 2:
            result = Double.pi * pow(value, 2)
            textFormuls = "Площадь круга равна \n \n S = π · r² \n \n S = π · \(doubleRound(value: value))² = \(doubleRound(value: result))"
        case 3:
            result = pow(value, 2)
            textFormuls = "Площадь квадрата равна \n \n S = a² \n \n  S = \(doubleRound(value: value))² = \(doubleRound(value: result))"
        case 4:
            result = pow(value, 2)/2
            textFormuls = "Площадь квадрата равна\n \n S = d²/2 \n \n S = \(doubleRound(value: value))²/2 = \(doubleRound(value: result))"
        case 5:
            result = (((3 * sqrt(3)) * pow(value, 2)) / (2))
            textFormuls = "Площадь шестиугольника равна \n \n S = (3√3 · a²) / 2 \n \n S = (3√3 · \(doubleRound(value: value))²)/2 = \(doubleRound(value: result))"
        case 6:
            result = (((3 * sqrt(3)) * pow(value, 2)) / (2))
            textFormuls = "Площадь шестиугольника равна \n \n S = (3√3 · R²) / 2 \n \n S = (3√3 · \(doubleRound(value: value))²)/2 = \(doubleRound(value: result))"
        case 7:
            result = 2 * sqrt(3) * pow(value, 2)
            textFormuls = "Площадь шестиугольника равна \n \n S = 2√3 · r² \n \n S = (2√3 · \(doubleRound(value: value))) = \(doubleRound(value: result))"
        case 8:
            result = (sqrt(3) * pow(value, 2))/(4)
            textFormuls = "Площадь треугольника равна \n \n S = (√3 · a²) / 4 \n \n S = (√3 · \(doubleRound(value: value))²) / 4 = \(doubleRound(value: result))"
        case 9:
            result  = (3 * sqrt(3) * pow(value, 2))/(4)
            textFormuls = "Площадь треугольника равна \n \n S = (3√3 · R²) / 4 \n \n S = (3√3 · \(doubleRound(value: value))²) / 4 = \(doubleRound(value: result))"
        case 10:
            result =  3 * sqrt(3) * pow(value, 2)
            textFormuls = "Площадь треугольника равна \n \n S = 3√3 · r² \n \n S = 3√3 · \(doubleRound(value: value))² = \(doubleRound(value: result))"
        case 11:
            result = (pow(value, 2))/(sqrt(3))
            textFormuls = "Площадь треугольника равна \n \n S = h² / √3 \n \n S = \(doubleRound(value: value))² / √3 = \(doubleRound(value: result))"
        case 12:
            result = pow(value, 3)
            textFormuls = "Объем куба равен \n \n V = a³ \n \n V = \(doubleRound(value: value))³ = \(doubleRound(value: result))"
        case 13:
            result = (pow(value, 3) * sqrt(2)) / (12)
            textFormuls = "Объем тетраэдера равен \n \n V = (√2 / 12) · a³ \n \n V = (√2 / 12) · \(doubleRound(value: value))³ = \(doubleRound(value: result))"
        case 14:
            result = (4/3) * Double.pi * (pow(value, 3))
            textFormuls = "Объем шара равен \n \n  V = 4/3 · (π · a³) \n \n V = \(doubleRound(value: Double.pi)) · \(doubleRound(value: value))³ = \(doubleRound(value: result))"
        case 15:
            result = 4 * value
            textFormuls = "Периметр квадрата равен \n \n P = 4 · a \n \n P = 4 · \(doubleRound(value: value)) = \(doubleRound(value: result))"
        case 16:
            result = 4 * value
            textFormuls = "Периметр ромба равен \n \n P = 4 · a \n \n  P = 4 · \(doubleRound(value: value)) = \(doubleRound(value: result))"
        case 17:
            result =  2 * Double.pi * value
            textFormuls = "Периметр круга равен \n \n P = π · r \n \n P = π · \(doubleRound(value: value)) = \(doubleRound(value: result))"
            
        default:
            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение \(nameText)", style: AlertStyle.error)
            self.view.endEditing(true)
        }
        
        SweetAlert().showAlert(title: "Расчет окончен", subTitle: textFormuls, style: AlertStyle.success)
        
        self.view.endEditing(true)
        
        
    }
    
    public func allFormulsOneValue(textField: UITextField?=nil, nameText: String, formuls: Int){

        if (guardFunction(textField: textField, nameText: nameText) == false) {
            
        } else {
            
            listFormulsOneValue(textField: textField, nameText: nameText, formuls: formuls)
            
        }
    }
    
    func listFormulsTwoValue(textFieldOne: UITextField?, textFieldTwo: UITextField?, nameTextOne: String, nameTextTwo: String, formuls: Int) {
    
        let valueOne = valueString(value: textFieldOne)
        let valueTwo = valueString(value: textFieldTwo)
        
        var textFormuls: String = ""
        var result: Double = 0.0
        
        
        switch formuls {
        case 1:
            result = 2 * (valueOne + valueTwo)
            textFormuls = "Периметр прямоугольника равен \n \n P = 2 · (a + b ) \n \n  P = 2 · (\(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
            
        case 2:
            result = 2 * (valueOne + valueTwo)
            textFormuls = "Периметр параллелограма равен \n \n P = 2 · (a + b ) \n \n  P = 2 · (\(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
            
        case 3:
            result = 1/3 * (valueOne * valueTwo)
            textFormuls = "Объем пирамиды равен \n \n  V = ⅓ · h · S \n \n V = ⅓ · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
            
        case 4:
            result = (valueOne * pow(valueTwo, 2)) / (4 * sqrt(3))
            textFormuls = "Объем правильной треугольной пирамиды равен \n \n V = (h · a²) / 4 · √3 \n \n V = ((\(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo))²) / 4 · √3 ) =  \(doubleRound(value: result))"
            
        case 5:
            result = (1/3)*(valueOne * pow(valueTwo, 2))
            textFormuls = "Объем правильной четырехугольной пирамиды равен \n \n V = ⅓ · h · a² \n \n V = ⅓ · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo))² = \(doubleRound(value: result))"
        case 6:
            result = (1/3)*(Double.pi * pow(valueOne, 2) * valueTwo)
            textFormuls = "Объем конуса равен \n \n V = ⅓ · (π · R² · h)\n \n V = ⅓ · (π · \(valueOne)² · \(valueTwo)) = \(result)"
        case 7:
            result = Double.pi * pow(valueOne, 2) * valueTwo
            textFormuls = "Объем цилиндра равен \n \n V = π · r² · h \n \n V = π · \(doubleRound(value: valueOne))² · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 8:
            result = valueOne * valueTwo
            textFormuls = "Площадь ромба равна \n \n S = a · h \n \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 9:
            result = (1/2) * (valueOne * valueTwo)
            textFormuls = "Площадь ромба равна \n \n S = 1/2 · (d₁ · d₂) \n \n S = 1/2 · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 10:
            result = (pow(valueOne, 2)) * sin((angleTranslation(angle: valueTwo)))
            textFormuls = "Площадь ромба равна \n \n S = a² · sinα \n \n S = \(doubleRound(value: valueOne))² · sin(\(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
        case 11:
            result = valueOne * valueTwo
            textFormuls = "Площадь прямоугольника равна \n \n  S = a · b \n \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 12:
            result = (pow(valueOne, 2)/2) * sin((valueTwo * Double.pi) / 180)
            textFormuls  = "Площадь прямоугольника равна \n \n S = (d² / 2) · sinα \n \n S = (\(doubleRound(value: valueOne))² / 2) · sin(\(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
        case 13:
            result = valueOne * valueTwo
            textFormuls = "Площадь трапеции равна \n \n S = h · m \n  \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 14:
            result = (4 * pow(valueOne, 2))/(sin((valueTwo * Double.pi) / 180))
            textFormuls = "Площадь трапеции равна \n \n S = (4 · r²)/sinα \n \n S = (4 · \(doubleRound(value: valueOne))²) / sin(\(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
        case 15:
            result = Double.pi * valueOne * valueTwo
            textFormuls = "Площадь эллипса равна \n \n S = π · r₁ · r₂ \n \n S = π · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 16:
            result = (Double.pi * (pow(valueOne, 2) - pow(valueTwo, 2)))
            textFormuls = "Площадь кольца равна \n \n S = π · (R² - r²) \n \n S = π · (\(doubleRound(value: valueOne))² - \(doubleRound(value: valueTwo))²) = \(doubleRound(value: result))"
        case 17:
            result = (Double.pi * pow(valueOne,2) * valueTwo.degreesToRadians)/(Double(360).degreesToRadians)
            textFormuls = "Площадь сектора круга равна \(doubleRound(value: result))"
        case 18:
            if valueTwo > 180 {
                SweetAlert().showAlert(title: "Ошибка", subTitle: "Угол сегмента не может превышать 180 градусов!", style: .warning)
                self.viewDidLoad()
            }
            else{
                result = (pow(Double(valueOne), 2)/2)*(Double.pi*(Double(valueTwo)/180) - sin(Double(valueTwo).degreesToRadians))
            }
            textFormuls = "Площадь сегмента круга равна \(doubleRound(value: result))"
        case 19:
            result = (1/2) * valueOne * valueTwo
            textFormuls = "Площадь треуголька равна \n \n S = 1/2 · (a · h) \n \n S = 1/2 · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 20:
            result = (1/2) * valueOne * valueTwo
            textFormuls = "Площадь треугольника равна \n \n S = (1/2) · a · b \n \n S = (1/2) · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 21:
            result = valueOne * valueTwo
            textFormuls = "Площадь треугольника равна \n \n S = d · e \n \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 22:
            result = (1/2) * pow(valueOne, 2) * sin((angleTranslation(angle: valueTwo)))
            textFormuls = "Площадь треугольника равна \n \n S = 1/2(a² · sinα) \n \n  S = 1/2(\(doubleRound(value: valueOne))² · sin(\(doubleRound(value: valueTwo)))) = \(doubleRound(value: result))"
        case 23:
            result = (pow(valueOne, 2))/(4 * tan(valueTwo/2))
            textFormuls = "Площадь треугольника равна \n \n S = (b²)/4 · tg(α/2) \n \n  S = (\(doubleRound(value: valueOne))²)/4 · tg(\(doubleRound(value: valueTwo))/2) = \(doubleRound(value: result))"
        case 24:
            result = (4 * pow(valueOne, 2)) / (sin((angleTranslation(angle: valueTwo))))
            textFormuls = "Площадь ромба равна \n \n S = (4 · r²) / sinα \n \n S = (4 · \(doubleRound(value: valueOne))²) / sin(\(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
        case 25:
            result = 2 * valueOne * valueTwo
            textFormuls = "Площадь ромба равна \n \n S = 2 · a · r \n \n S = 2 · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        case 26:
            result = valueOne * valueTwo
            textFormuls = "Площадь параллелограмма равна \n \n S = a · h \n \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) = \(doubleRound(value: result))"
        default:
            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
            self.view.endEditing(true)
        }
        SweetAlert().showAlert(title: "Расчет окончен", subTitle: textFormuls, style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
    
    public func allFormulsTwoValue(textFieldOne: UITextField?, textFieldTwo: UITextField?, nameTextOne: String, nameTextTwo: String, formuls: Int) {

        if (guardFunction(textField: textFieldOne, nameText: nameTextOne) == false) || (guardFunction(textField: textFieldTwo, nameText: nameTextTwo) == false){
            
        } else {
            
            listFormulsTwoValue(textFieldOne: textFieldOne, textFieldTwo: textFieldTwo, nameTextOne: nameTextOne, nameTextTwo: nameTextTwo, formuls: formuls)
            
        }
       
    }
    
    
    func listFormulsThreeValue(textFieldOne: UITextField?, textFieldTwo: UITextField?, textFieldThree: UITextField?, nameTextOne: String, nameTextTwo: String, nameTextThree: String,  formuls: Int) {
    
        let valueOne = valueString(value: textFieldOne)
        let valueTwo = valueString(value: textFieldTwo)
        let valueThree = valueString(value: textFieldThree)
        
        var textFormuls: String = ""
        var result: Double = 0.0
        
        switch formuls {
        case 1:
            result = valueOne + valueTwo + valueThree
            textFormuls = "Периметр треугольника равен \n \n  P = a + b + c \n \n P = \(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo)) + \(doubleRound(value: valueThree)) = \(doubleRound(value: result))"
        case 2:
            result = valueOne * valueTwo * (sin(angleTranslation(angle: valueTwo)))
            textFormuls = "Площадь параллелограмма равна \n \n S = a · b · sinα \n \n S = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
        case 3:
            result = (1/2) * (valueOne * valueTwo * sin(angleTranslation(angle: valueThree)))
            textFormuls = "Площадь параллелограмма равна \n \n S = 1/2 · d₁ · d₂ · sinα \n \n  S = 1/2 · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
        case 4:
            result = (((valueOne + valueTwo)/2) * valueThree)
            textFormuls = "Площадь трапеции равна \n \n S = ((a + b)/2) · h \n \n S = ((\(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo)))/2) · \(doubleRound(value: valueThree)) = \(doubleRound(value: result))"
        case 5:
            result = (1/2) * valueOne * valueTwo * sin(angleTranslation(angle: valueThree))
            textFormuls = "Площадь трапеции равна \n \n S = 1/2 · d₁ · d₂ · sinα \n \n S = 1/2 · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
        case 6:
            result = (1/2) * (valueOne * valueTwo * sin(angleTranslation(angle: valueThree)))
            textFormuls = "Площадь четырехугольник равна \n \n S = 1/2·(d₁ · d₂ · sinα) \n \n S = 1/2·(\(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree)))) = \(doubleRound(value: result))"
        case 7:
            result = valueOne * valueTwo * valueThree
            textFormuls = "Объем паралепипеда равен \n \n V = a · b · c \n \n V = \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · \(doubleRound(value: valueThree)) = \(doubleRound(value: result))"
        case 8:
            result = (valueOne * valueTwo * pow(valueThree, 2))/( 12 * (tan(180 / angleTranslation(angle: valueTwo) )))
            textFormuls = "Объем правильной пирамиды равен \n \n V = (h · n · a²)/(12 · tg (180 / n )) \n \n V = (\(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · \(doubleRound(value: valueThree))²)/(12 · tg(180/ \(doubleRound(value: valueTwo)))) = \(doubleRound(value: result))"
        case 9:
            result = (1/3) * valueOne * (valueTwo * sqrt(valueTwo * valueThree) * valueThree)
            textFormuls = "Объем усеченной пирамиды равен \n \n  V = ⅓ · h · (S₁ + √S₁S₂ + S₂) \n \n  V = ⅓ · \(doubleRound(value: valueOne)) · (\(doubleRound(value: valueTwo)) + √\(doubleRound(value: valueTwo)) · \(doubleRound(value: valueThree)) + \(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
        case 10:
            result = (1/3) * Double.pi * valueOne * (pow(valueThree, 2) + (valueThree * valueTwo) + pow(valueTwo, 2))
            textFormuls = "Объем усеченного конуса равен \n \n V = ⅓ · π · h · (R² · R·r + r²) \n \n  V = ⅓ · \(doubleRound(value: Double.pi)) · \(doubleRound(value: valueOne)) · (\(doubleRound(value: valueThree))² · \(doubleRound(value: valueThree))·\(doubleRound(value: valueTwo)) + \(doubleRound(value: valueTwo))²) = \(doubleRound(value: result))"
        case 11:
            result = (1/2) * valueOne * valueTwo * (sin(angleTranslation(angle: valueThree)))
            textFormuls = "Площадь треугольника равна \n \n  S = 1/2 · (a · b · sinα) \n \n S = 1/2 · (\(doubleRound(value: valueOne))) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
        case 12:
            let p = (1/2)*(valueOne + valueTwo + valueThree)
            result = sqrt(p * (p - valueOne) * (p - valueTwo) * (p - valueThree))
            textFormuls = "Площадь треугольника равна \n \n S = √p · (p - a) · (p - b) · (p - c) \n \n S = √\(doubleRound(value: p)) · (\(doubleRound(value: p)) - \(doubleRound(value: valueOne)) · (\(doubleRound(value: p)) - \(doubleRound(value: valueTwo))) · (\(doubleRound(value: p)) - \(doubleRound(value: valueThree)) = \(doubleRound(value: result))"
        case 13:
            let p = (1/2)*(valueOne + valueTwo + valueThree)
            result = (p - valueOne) * (p - valueTwo)
            textFormuls = "Площадь треугольника равна \n \n S = (p - a) · (p - b) \n \n S = ( \(doubleRound(value: p)) - \(doubleRound(value: valueOne))) · ( \(doubleRound(value: p)) - \(doubleRound(value: valueTwo))) = \(doubleRound(value: result))"
        case 14:
            result = (1/2) * valueOne * valueTwo * sin(angleTranslation(angle: valueThree))
            textFormuls = "Площадь треугольника равна \n \n S = (1/2) · a · b · sinα \n \n S = (1/2) · \(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · sin(\(doubleRound(value: valueThree))) = \(doubleRound(value: result))"
            
        default:
            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
            self.view.endEditing(true)
        }
        
        SweetAlert().showAlert(title: "Расчет окончен", subTitle: textFormuls, style: AlertStyle.success)
        
        self.view.endEditing(true)
        
    }
    
   
    
    public func allFormulsThreeVariables(textFieldOne: UITextField?, textFieldTwo: UITextField?, textFieldThree: UITextField?, nameTextOne: String, nameTextTwo: String, nameTextThree: String,  formuls: Int) {
        
        if (guardFunction(textField: textFieldOne, nameText: nameTextOne)  == false ) || (guardFunction(textField: textFieldTwo, nameText: nameTextTwo)  == false) || (guardFunction(textField: textFieldThree, nameText: nameTextThree) == false) {
            
        } else {
            listFormulsThreeValue(textFieldOne: textFieldOne, textFieldTwo: textFieldTwo, textFieldThree: textFieldThree, nameTextOne: nameTextOne, nameTextTwo: nameTextTwo, nameTextThree: nameTextThree, formuls: formuls)
        }
//
//        guardFunction(textField: textFieldOne, nameText: nameTextOne)
//        guardFunction(textField: textFieldTwo, nameText: nameTextTwo)
//        guardFunction(textField: textFieldThree, nameText: nameTextThree)
////
//        guard textFieldOne!.text != "" else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение \(nameTextOne)", style: AlertStyle.error)
//            self.view.endEditing(true)
//            return
//        }
//
//        guard textFieldTwo!.text != "" else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение \(nameTextTwo)", style: AlertStyle.error)
//            self.view.endEditing(true)
//            return
//        }
//
//        guard textFieldThree!.text != "" else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение \(nameTextTwo)", style: AlertStyle.error)
//            self.view.endEditing(true)
//            return
//        }

      

    }
    
    func listFormulsFourValue(textFieldOne: UITextField?, textFieldTwo: UITextField?, textFieldThree: UITextField?, textFieldFour: UITextField?,  nameTextOne: String, nameTextTwo: String, nameTextThree: String, nameTextFour: String,  formuls: Int) {
        
        
        let valueOne = valueString(value: textFieldOne)
        let valueTwo = valueString(value: textFieldTwo)
        let valueThree = valueString(value: textFieldThree)
        let valueFour = valueString(value: textFieldFour)
        
        var textFormuls: String = ""
        var result: Double = 0.0
        
        
        switch formuls {
        case 1:
            result = valueOne + valueTwo + valueThree + valueFour
            textFormuls = "Периметр трапеции равен \n \n P = a + b + c + d \n \n P = \(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo)) + \(doubleRound(value: valueThree)) + \(doubleRound(value: valueFour)) = \(doubleRound(value: result))"
        case 2:
            result = ((valueOne + valueTwo)/2) *
                sqrt(pow(valueThree, 2) - pow(((pow(valueTwo - valueOne, 2) + pow(valueThree, 2) - pow(valueFour, 2))/(2 * (valueTwo - valueOne))), 2))
            textFormuls = "Площадь равна  \n \n S = ((a + b) / 2) · √(c² - ((b - a)² + c² - d²) / 2 · (b - a))) \n \n S = ((\(doubleRound(value: valueOne)) + \(doubleRound(value: valueTwo))) / 2) · √(\(doubleRound(value: valueThree))² - \(doubleRound(value: valueTwo))) - \(doubleRound(value: valueOne))² + \(doubleRound(value: valueThree))² - \(doubleRound(value: valueFour))²) / 2 · (\(doubleRound(value: valueTwo)) - \(doubleRound(value: valueOne))))) = \(doubleRound(value: result))"
            
        case 3:
            let p = (1/2)*(valueOne + valueTwo + valueThree + valueFour)
            result = ((p - valueOne) * (p - valueTwo) * (p - valueThree) * (p - valueFour))
            textFormuls = "Площадь четырехугольника равна \n\n S = √((p - a)·(p - b)·(p - c)·(p - d)) \n \n S = √(\(doubleRound(value: p)) - \(doubleRound(value: valueOne)))·(\(doubleRound(value: p)) - \(doubleRound(value: valueTwo)))·(\(doubleRound(value: p)) - \(doubleRound(value: valueThree)))·(\(doubleRound(value: p)) - \(doubleRound(value: valueFour))) = \(doubleRound(value: result))"
            
        case 4:
            let p = (valueOne + valueTwo + valueThree)/2
            result = valueFour * p
            textFormuls = "Площадь треугольника равна \n \n S = r · p \n \n S = \(doubleRound(value: valueFour)) · \(doubleRound(value: p)) = \(doubleRound(value: result))"
        case 5:
            result = (valueOne * valueTwo * valueThree) / (4 * valueFour)
            textFormuls = "Площадь треугольнька равна \n \n S = (a · b · c) / 4 · R \n \n S = (\(doubleRound(value: valueOne)) · \(doubleRound(value: valueTwo)) · \(doubleRound(value: valueThree))) / 4 · \(doubleRound(value: valueFour)) = \(doubleRound(value: result))"
            
            
        default:
            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
            self.view.endEditing(true)
        }
        
        SweetAlert().showAlert(title: "Расчет окончен", subTitle: textFormuls, style: AlertStyle.success)
        
        self.view.endEditing(true)
        
    }

    func allFormulsFourVaribles(textFieldOne: UITextField?, textFieldTwo: UITextField?, textFieldThree: UITextField?, textFieldFour: UITextField?,  nameTextOne: String, nameTextTwo: String, nameTextThree: String, nameTextFour: String,  formuls: Int) {

        if (guardFunction(textField: textFieldOne, nameText: nameTextOne) == false) || (guardFunction(textField: textFieldTwo, nameText: nameTextTwo) == false) || (guardFunction(textField: textFieldThree, nameText: nameTextThree) == false) || (guardFunction(textField: textFieldFour, nameText: nameTextFour) == false) {
            
        } else {
           listFormulsFourValue(textFieldOne: textFieldOne, textFieldTwo: textFieldTwo, textFieldThree: textFieldThree, textFieldFour: textFieldFour, nameTextOne: nameTextOne, nameTextTwo: nameTextTwo, nameTextThree: nameTextThree, nameTextFour: nameTextFour, formuls: formuls)
        }
        
    }
    
}
