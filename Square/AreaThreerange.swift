//
//  AreaThreerange.swift
//  Square
//
//  Created by  ShMichail on 27.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class AreaThreerange: UIViewController {
    
    
    @IBOutlet weak var b3: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0xFF9500)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
    }
    
    override func viewDidLoad() {
        b3.layer.cornerRadius = 5
        self.navigationController?.hidesBarsOnSwipe = true
   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)->() {
        self.view.endEditing(true)
        SweetAlert().view.endEditing(true)
    }
   
    //Начало расчета площади треугольника через основание и высоту
    @IBOutlet weak var EnterAreaThreerangle1a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle: UITextField!
    @IBAction func ButtonAreaThreerangle(_ sender: UIButton) {
        
        
        allFormulsTwoValue(textFieldOne: EnterAreaThreerangle1a, textFieldTwo: EnterAreaThreerangle, nameTextOne: "a", nameTextTwo: "h", formuls: 19)
//asd
//        if EnterAreaThreerangle1a.text != "" && EnterAreaThreerangle.text != ""
//        {
//            let newStringa: Double = (EnterAreaThreerangle1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil) as NSString).doubleValue
//            let newString: Double = (EnterAreaThreerangle.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil) as NSString).doubleValue
//
//
//     //   let AreaThreerangle1a : Double = (newStringa as NSString).doubleValue
//       // let AreaThreerangle1h : Double = (newString as NSString).doubleValue
//        let AreaThreerangle1 = (1/2) * newStringa * newString
//        let AreaThreerangle11 = "Площадь треуголька равна \n \n S = 1/2 · (a · h) \n \n S = 1/2 · \(round(newStringa*1000)/1000) · \(round(newString*1000)/1000) = \(round(AreaThreerangle1*1000)/1000)"
//
//
//            //SweetAlert.showAlert(title: "Good morning", subTitle: "\AreaThreerange11")
//
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            if EnterAreaThreerangle1a.text == "" && EnterAreaThreerangle.text != ""
//            {
//                SweetAlert().showAlert(title:"Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else
//            {
//                if EnterAreaThreerangle1a.text != "" && EnterAreaThreerangle.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
//            }
//        }
    
 
    }
        @IBAction func infoButton(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Площадь треугольника равна половине произведения длины стороны треугольника на длину проведенной к этой стороне высоты: \n S = 1/2 · (a · h)", style: AlertStyle.success)
        self.view.endEditing(true)
 
            
        
    }
    
//Окончание расчета площади треугольника через основание и высоту
    
    //============//
    
    //Начало расчета площади треугольника через две стороны и угол
    @IBOutlet weak var EnterAreaThreerangle2a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle2b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle2å: UITextField!
    @IBAction func ButtonAreaThreerangle2(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaThreerangle2a, textFieldTwo: EnterAreaThreerangle2b, textFieldThree: EnterAreaThreerangle2å, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "α", formuls: 11)
        
//        if EnterAreaThreerangle2a.text != "" && EnterAreaThreerangle2b.text != "" && EnterAreaThreerangle2å.text != ""
//        {
//             let newStringa = EnterAreaThreerangle2a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringb = EnterAreaThreerangle2b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringå = EnterAreaThreerangle2å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle2a: Double = (newStringa as NSString).doubleValue
//            let AreaThreerangle2b: Double = (newStringb as NSString).doubleValue
//            let AreaThreerangle2å: Double = (newStringå as NSString).doubleValue
//
//            let aD = (AreaThreerangle2å * Double.pi) / 180
//            let AreaThreerangle2 = (1/2) * AreaThreerangle2a * AreaThreerangle2b * (sin(aD))
//
//
//            let AT221 = round(AreaThreerangle2a*1000)/1000
//            let AT222 = round(AreaThreerangle2b*1000)/1000
//            let AT223 = round(AreaThreerangle2å*1000)/1000
//            let AT224 = round(AreaThreerangle2 * 1000) / 1000
//
//            let AreaThreerangle22 = "Площадь треугольника равна \n \n  S = 1/2 · (a · b · sinα) \n \n S = 1/2 · (\(AT221)) · \(AT222) · sin(\(AT223)) = \(AT224)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaThreerangle2a.text == "" && EnterAreaThreerangle2b.text != "" && EnterAreaThreerangle2å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a" , style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle2a.text != "" && EnterAreaThreerangle2b.text == "" && EnterAreaThreerangle2å.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle2a.text != "" && EnterAreaThreerangle2b.text != "" && EnterAreaThreerangle2å.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }
   
    
    @IBAction func infoButton1(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Площадь треугольника равна половине произведения двух его сторон умноженного на синус угла между ними: \n S = 1/2 · (a · b · sinα)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
  //Окончание расчета площади треугольника через две стороны и угол
    
  //==============//
    
    // Начало расчета площади треугольника по формуле Герона
    
    @IBOutlet weak var EnterAreaThreerangle3a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle3b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle3c: UITextField!
    @IBAction func ButtonAreaThreerangle3(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaThreerangle3a, textFieldTwo: EnterAreaThreerangle3b, textFieldThree: EnterAreaThreerangle3c, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", formuls: 12)
        
//        if EnterAreaThreerangle3a.text != "" && EnterAreaThreerangle3b.text != "" && EnterAreaThreerangle3c.text != ""
//        {
//            let newString3a = EnterAreaThreerangle3a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString3b = EnterAreaThreerangle3b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString3c = EnterAreaThreerangle3c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//        let AreaThreerangle3a:Float = (newString3a as NSString).floatValue
//        let AreaThreerangle3b:Float = (newString3b as NSString).floatValue
//        let AreaThreerangle3c:Float = (newString3c as NSString).floatValue
//
//            let p = (AreaThreerangle3a + AreaThreerangle3b + AreaThreerangle3c)/2
//
//            let AreaThreerangle3 = sqrt(p * (p - AreaThreerangle3a) * (p - AreaThreerangle3b) * (p - AreaThreerangle3c))
//
//            let AT331 = round(p*1000)/1000
//            let AT333 = round(AreaThreerangle3a*1000)/1000
//            let AT335 = round(AreaThreerangle3b*1000)/1000
//            let AT332 = round(AreaThreerangle3c*1000)/1000
//            let AT334 = round(AreaThreerangle3*1000)/1000
//
//
//            let AreaThreerangle33 = "Площадь треугольника равна \n \n S = √p · (p - a) · (p - b) · (p - c) \n \n S = √\(AT331) · (\(AT331) - \(AT333) · (\(AT331) - \(AT335)) · (\(AT331) - \(AT332) = \(AT334)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle33)", style: AlertStyle.success)
//
//            self.view.endEditing(true)
//        }
//        else if EnterAreaThreerangle3a.text == "" && EnterAreaThreerangle3b.text != "" && EnterAreaThreerangle3c.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a" , style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle3a.text != "" && EnterAreaThreerangle3b.text == "" && EnterAreaThreerangle3c.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle3a.text != "" && EnterAreaThreerangle3b.text != "" && EnterAreaThreerangle3c.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    
    @IBAction func infoButton2(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Самой  распространенной формулой для расчета площади треугольника по трем сторонам является формула Герона. \n Если известны длины всех сторон, то можно вычислить площадь фигуры, применив формулу Герона для площади треугольника: \n S = √p · (p - a) · (p - b) · (p - c) ", style: AlertStyle.success)
            self.view.endEditing(true)
    }
    
    
    //Окончание расчета площади по формуле Герона
    
    //===========//
    
    //Начало расчета площади треугольника через радиус вписанной окружности
    
    @IBOutlet weak var EnterAreaThreerangle4a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle4b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle4c: UITextField!
    @IBOutlet weak var EnterAreaThreerangle4d: UITextField!
    @IBAction func ButtonAreaThreerangle4(_ sender: UIButton) {
        
        allFormulsFourVaribles(textFieldOne: EnterAreaThreerangle4a, textFieldTwo: EnterAreaThreerangle4b, textFieldThree: EnterAreaThreerangle4c, textFieldFour: EnterAreaThreerangle4d, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", nameTextFour: "r", formuls: 4)
        
//        if EnterAreaThreerangle4a.text != "" && EnterAreaThreerangle4b.text != "" && EnterAreaThreerangle4c.text != "" && EnterAreaThreerangle4d.text != ""
//        {
//             let newString4a = EnterAreaThreerangle4a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString4b = EnterAreaThreerangle4b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString4c = EnterAreaThreerangle4c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString4d = EnterAreaThreerangle4d.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        let AreaThreerangle4a:Double = (newString4a as NSString).doubleValue
//        let AreaThreerangle4b:Double = (newString4b as NSString).doubleValue
//        let AreaThreerangle4c:Double = (newString4c as NSString).doubleValue
//        let AreaThreerangle4r:Double = (newString4d as NSString).doubleValue
//        let p = (AreaThreerangle4a + AreaThreerangle4b + AreaThreerangle4c)/2
//        let AreaThreerangle4 = AreaThreerangle4r * p
//
//        let AT441 = round(AreaThreerangle4r*1000)/1000
//        let AT442 = round(AreaThreerangle4 * 1000) / 1000
//
//        let AreaThreerangle44 = "Площадь треугольника равна \n \n S = r · p \n \n S = \(AT441) · \(p) = \(AT442)"
//        SweetAlert().showAlert(title: "Расчет окончен", subTitle: " \(AreaThreerangle44)", style: AlertStyle.success)
//        self.view.endEditing(true)
//        }
//        else if EnterAreaThreerangle4a.text == "" && EnterAreaThreerangle4b.text != "" && EnterAreaThreerangle4c.text != "" && EnterAreaThreerangle4d.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle4a.text != "" && EnterAreaThreerangle4b.text == "" && EnterAreaThreerangle4c.text != "" && EnterAreaThreerangle4d.text != ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else if EnterAreaThreerangle4a.text != "" && EnterAreaThreerangle4b.text != "" && EnterAreaThreerangle4c.text == "" && EnterAreaThreerangle4d.text != ""
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                            self.view.endEditing(true)
//                        }
//                        else if EnterAreaThreerangle4a.text != "" && EnterAreaThreerangle4b.text != "" && EnterAreaThreerangle4c.text != "" && EnterAreaThreerangle4d.text == ""
//                            {
//                                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                                self.view.endEditing(true)
//                            }
//                            else
//                            {
//                                SweetAlert().showAlert(title: "Ошибка" , subTitle: "Введите значения", style: AlertStyle.error)
//                                self.view.endEditing(true)
//                            }
                        }
 
    @IBAction func infoButton3(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Площадь треугольника равна произведения полупериметра треугольника на радиус вписанной окружности: \n S = r · p \n p = (a + b + c)/2", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
//Окончание расчета площади треугольника через радиус вписанной окружности 
    
    //============//
    
    //Начало расчета площади треугольника через радиус описанной окружности
    
    @IBOutlet weak var EnterAreaThreerangle5a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle5b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle5c: UITextField!
    @IBOutlet weak var EnterAreaThreerangle5R: UITextField!
    @IBAction func ButtonAreaThreerangle5(_ sender: UIButton) {
        
        allFormulsFourVaribles(textFieldOne: EnterAreaThreerangle5a, textFieldTwo: EnterAreaThreerangle5b, textFieldThree: EnterAreaThreerangle5c, textFieldFour: EnterAreaThreerangle5R, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", nameTextFour: "R", formuls: 5)
        
//        if EnterAreaThreerangle5a.text != "" && EnterAreaThreerangle5b.text != "" && EnterAreaThreerangle5c.text != "" && EnterAreaThreerangle5R.text != ""
//        {
//
//             let newString5a = EnterAreaThreerangle5a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString5b = EnterAreaThreerangle5b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString5c = EnterAreaThreerangle5c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString5R = EnterAreaThreerangle5R.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle5a :Double = (newString5a as NSString).doubleValue
//            let AreaThreerangle5b : Double = (newString5b as NSString).doubleValue
//            let AreaThreerangle5c : Double = (newString5c as NSString).doubleValue
//            let AreaThreerangle5R:Double = (newString5R as NSString).doubleValue
//            let AreaThreerangle5 = (AreaThreerangle5a * AreaThreerangle5b * AreaThreerangle5c) / (4 * AreaThreerangle5R)
//
//            let AT551 = round(AreaThreerangle5a*1000)/1000
//            let AT552 = round(AreaThreerangle5b*1000)/1000
//            let AT553 = round(AreaThreerangle5c*1000)/1000
//            let AT554 = round(AreaThreerangle5R*1000)/1000
//            let AT555 = round(AreaThreerangle5 * 1000)/1000
//
//            let AreaThreerangle55 = "Площадь треугольнька равна \n \n S = (a · b · c) / 4 · R \n \n S = (\(AT551) · \(AT552) · \(AT553)) / 4 · \(AT554) = \(AT555)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle55)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaThreerangle5a.text == "" && EnterAreaThreerangle5b.text != "" && EnterAreaThreerangle5c.text != "" && EnterAreaThreerangle5R.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle5a.text != "" && EnterAreaThreerangle5b.text == "" && EnterAreaThreerangle5c.text != "" && EnterAreaThreerangle5R.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle5a.text != "" && EnterAreaThreerangle5b.text != "" && EnterAreaThreerangle5c.text == "" && EnterAreaThreerangle5R.text != ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение с", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else if EnterAreaThreerangle5a.text != "" && EnterAreaThreerangle5b.text != "" && EnterAreaThreerangle5c.text != "" && EnterAreaThreerangle5R.text == ""
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                            self.view.endEditing(true)
//                        }
//                        else
//                        {
//                            SweetAlert().showAlert(title: "Ошибка" , subTitle: "Введите значения" , style: AlertStyle.error)
//                            self.view.endEditing(true)
//                        }

    }
    
    @IBAction func infoButton4(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Площадь треугольника равна отношению произведения его сторон к учетверенному радиусу описанной окружности: \n S = (a · b · c) / (4 · R)", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади треугольника через описанной окружность
    
    //============//
    
    
    //Начало расчета площади прямоугольного треугольника
    
    //Начало расчета прямоугольного треугольника через две стороны
    
    @IBOutlet weak var EnterAreaThreerangle6901a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle6901b: UITextField!
    @IBAction func ButtonAreaThrerangle6901(_ sender: UIButton) {
        
        
        allFormulsTwoValue(textFieldOne: EnterAreaThreerangle6901a, textFieldTwo: EnterAreaThreerangle6901b, nameTextOne: "a", nameTextTwo: "b", formuls: 20)
//
//        if EnterAreaThreerangle6901a.text != "" && EnterAreaThreerangle6901b.text != ""
//        {
//             let newString69a = EnterAreaThreerangle6901a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString69b = EnterAreaThreerangle6901b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle6901a : Double = ( newString69a as NSString).doubleValue
//            let AreaThreerangle6901b: Double = ( newString69b as NSString).doubleValue
//
//            let AreaThreerangle6 = (1/2) * AreaThreerangle6901a * AreaThreerangle6901b
//            let AreaThreerangle66 = "Площадь треугольника равна \n \n S = (1/2) · a · b \n \n S = (1/2) · \(round(AreaThreerangle6901a*1000)/1000) · \(round(AreaThreerangle6901b*1000)/1000) = \(round(AreaThreerangle6 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle66)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaThreerangle6901a.text == "" && EnterAreaThreerangle6901b.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle6901a.text != "" && EnterAreaThreerangle6901b.text == ""
//            {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите  значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//            }
//                else
//            {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//            }
        }

    @IBAction func infoButton5(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник образуется соединением отрезками трех точек, не лежащих на одной прямой. При этом точки называются вершинами треугольника, а отрезки - его сторонами. \n Если один из углов прямой, то треугольник - прямоугольный. Площадь прямоугольного треугольника равна половине произведения катетов треугольника: \n S = (1/2) · a · b", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
  //Окончание расчета площади треугольника через две стороны
    
    
    //===========//
    
    //Начало расчета площади треугольника через гипотенузу
    
    
    @IBOutlet weak var EnterAreaThreerangle7902: UITextField!
    @IBOutlet weak var EnterAreaThreerangle7902e: UITextField!
    @IBAction func ButtonAreaThreerangle7902(_ sender: UIButton) {
        
        
        allFormulsTwoValue(textFieldOne: EnterAreaThreerangle7902, textFieldTwo: EnterAreaThreerangle7902e, nameTextOne: "d", nameTextTwo: "e", formuls: 21)
//
//        if EnterAreaThreerangle7902.text != "" && EnterAreaThreerangle7902e.text != ""
//        {
//            let newString79 = EnterAreaThreerangle7902.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString79e = EnterAreaThreerangle7902e.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        let AreaThreerangle7902d:Double = (newString79 as NSString).doubleValue
//        let AreaThreerangle7902e:Double = (newString79e as NSString).doubleValue
//
//        let AreaThreerangle7 = AreaThreerangle7902d * AreaThreerangle7902e
//        let AreaThreerangle77 = "Площадь треугольника равна \n \n S = d · e \n \n S = \(round(AreaThreerangle7902d*1000)/1000) · \(round(AreaThreerangle7902e*1000)/1000) = \(round(AreaThreerangle7 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle77)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaThreerangle7902.text == "" && EnterAreaThreerangle7902e.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle7902.text != "" && EnterAreaThreerangle7902e.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение e", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения" , style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    @IBAction func infoButton6(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Инфомарция", subTitle: "Треугольник образуется соединением отрезками трех точек, не лежащих на одной прямой. При этом точки называются вершинами треугольника, а отрезки - его сторонами. \n Если один из углов прямой, то треугольник - прямоугольный. \n Площадь треугольника находится по формуле: \n S = d · e  ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади треугольника через гипотенузу
    
    //===========//
    
    //Начало расчет площади по формуле Герона
    
    @IBOutlet weak var EnterAreaThreerangle8903a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle8903b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle8903c: UITextField!
    @IBAction func ButtonAreaThreerangle8903(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaThreerangle8903a, textFieldTwo: EnterAreaThreerangle8903b, textFieldThree: EnterAreaThreerangle8903c, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", formuls: 13)
//
//        if EnterAreaThreerangle8903a.text != "" && EnterAreaThreerangle8903b.text != "" && EnterAreaThreerangle8903c.text != ""
//        {
//            let newString89a = EnterAreaThreerangle8903a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString89b = EnterAreaThreerangle8903b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString89c = EnterAreaThreerangle8903c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle8903a:Double = (newString89a as NSString).doubleValue
//            let AreaThreerangle8903b:Double = (newString89b as NSString).doubleValue
//            let AreaThreerangle8903c:Double = (newString89c as NSString).doubleValue
//            let p = (AreaThreerangle8903a + AreaThreerangle8903b + AreaThreerangle8903c)/2
//            let AreaThreerangle8903 = (p - AreaThreerangle8903a) * (p - AreaThreerangle8903b)
//
//            let AT890331 = round(p*1000)/1000
//            let AT890332 = round(AreaThreerangle8903a*1000)/1000
//            let AT890333 = round(AreaThreerangle8903b*1000)/1000
//            let AT890334 = round(AreaThreerangle8903 * 1000)/1000
//
//
//            let AreaThreerangle89033 = "Площадь треугольника равна \n \n S = (p - a) · (p - b) \n \n S = ( \(AT890331) - \(AT890332)) · ( \(AT890331) - \(AT890333)) = \(AT890334)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle89033)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaThreerangle8903a.text == "" && EnterAreaThreerangle8903b.text != "" && EnterAreaThreerangle8903c.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка",subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle8903a.text != "" && EnterAreaThreerangle8903b.text == "" && EnterAreaThreerangle8903c.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle8903a.text != "" && EnterAreaThreerangle8903b.text != "" && EnterAreaThreerangle8903c.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }
    
    @IBAction func infoButton7(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Инфомарция", subTitle: "Треугольник образуется соединением отрезками трех точек, не лежащих на одной прямой. При этом точки называются вершинами треугольника, а отрезки - его сторонами. \n Если один из углов прямой, то треугольник - прямоугольный. \n Площадь треугольника находится по формуле: \n S = (p - a) · (p - b)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    

    //Окончание расчета площади по формуле Герона

//Окончание расчета площади прямоугольного треугольника
    

    //==========//
    

//Начало расчета площади равнобедренного треугольника
    
    //Начало расчета площади через катет и угол
    
    @IBOutlet weak var EnterAreaThreerangle9a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle9å: UITextField!
    @IBAction func ButtonAreaThreerangle9(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaThreerangle9a, textFieldTwo: EnterAreaThreerangle9å, nameTextOne: "a", nameTextTwo: "α", formuls: 22)
        
//        if EnterAreaThreerangle9a.text != "" && EnterAreaThreerangle9å.text != ""
//        {
//            let newString9a = EnterAreaThreerangle9a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString9å = EnterAreaThreerangle9å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle9a:Double = (newString9a as NSString).doubleValue
//            let AreaThreerangle9å:Double = (newString9å as NSString).doubleValue
//            let aD = (AreaThreerangle9å * Double.pi) / 180
//            let AreaThreerangle9 = (1/2) * pow(AreaThreerangle9a, 2) * sin(aD)
//            let AreaThreerangle99 = "Площадь треугольника равна \n \n S = 1/2(a² · sinα) \n \n  S = 1/2(\(round(AreaThreerangle9a*1000)/1000)² · sin(\(round(AreaThreerangle9å*1000)/1000))) = \(round(AreaThreerangle9 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle99)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaThreerangle9a.text == "" && EnterAreaThreerangle9å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle9a.text != "" && EnterAreaThreerangle9å.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    
    @IBAction func infoButton8(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Треугольник называется равнобедренным, если у него две стороны равны. Эти стороны называются боковыми, а третья сторона – основанием. \n Свойства равнобедренного треугольника выражают следующие теоремы. \n 1) В равнобедренном треугольнике углы при основании равны. \n 2) В равнобедренном треугольнике биссектриса, проведенная к основанию, является медианой и высотой. \n 3) В равнобедренном треугольнике медиана, проведенная к основанию, является биссектрисой и высотой. \n 4) В равнобедренном треугольнике высота, проведенная к основанию, является биссектрисой и медианой. \n Площадь равнобедренного треугольника находится по формуле: \n S = 1/2(a² · sinα)", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади через катет и угол
    
    //==========//
    
    //Начало расчета площади треугольника через катет гипотинузу и угол
    
    @IBOutlet weak var EnterAreaThreerangle10a: UITextField!
    @IBOutlet weak var EnterAreaThreerangle10b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle10å: UITextField!
    @IBAction func ButtonAreaThreerangle10(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaThreerangle10a, textFieldTwo: EnterAreaThreerangle10b, textFieldThree: EnterAreaThreerangle10å, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "α", formuls: 14)
        
//        if EnterAreaThreerangle10a.text != "" && EnterAreaThreerangle10b.text != "" && EnterAreaThreerangle10å.text != ""
//        {
//            let newString10a = EnterAreaThreerangle10a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString10b = EnterAreaThreerangle10b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString10å = EnterAreaThreerangle10å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            
//            
//            let AreaThreerangle10a:Double = (newString10a as NSString).doubleValue
//            let AreaThreerangle10b:Double = (newString10b as NSString).doubleValue
//            let AreaThreerangle10å:Double = (newString10å as NSString).doubleValue
//            
//            let aD = (AreaThreerangle10å * Double.pi)/180
//            
//            let AreaThreerangle10 = (1/2) * AreaThreerangle10a * AreaThreerangle10b * sin(aD)
//            
//            let AT10101 = round(AreaThreerangle10a*1000)/1000
//            let AT10102 = round(AreaThreerangle10b*1000)/1000
//            let AT10103 = round(AreaThreerangle10å*1000)/1000
//            let AT10104 = round(AreaThreerangle10 * 1000)/1000
//            
//            let AreaThreerangle1010 = "Площадь треугольника равна \n \n S = (1/2) · a · b · sinα \n \n S = (1/2) · \(AT10101) · \(AT10102) · sin(\(AT10103)) = \(AT10104)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1010)", style: AlertStyle.success)
//            self.view.endEditing(true)
//            
//        }
//        else if EnterAreaThreerangle10a.text == "" && EnterAreaThreerangle10b.text != "" && EnterAreaThreerangle10å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a" , style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle10a.text != "" && EnterAreaThreerangle10b.text == "" && EnterAreaThreerangle10å.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaThreerangle10a.text != "" && EnterAreaThreerangle10b.text != "" && EnterAreaThreerangle10å.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение  α" , style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    
    @IBAction func infoButton9(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Треугольник называется равнобедренным, если у него две стороны равны. Эти стороны называются боковыми, а третья сторона – основанием. \n Свойства равнобедренного треугольника выражают следующие теоремы. \n 1) В равнобедренном треугольнике углы при основании равны. \n 2) В равнобедренном треугольнике биссектриса, проведенная к основанию, является медианой и высотой. \n 3) В равнобедренном треугольнике медиана, проведенная к основанию, является биссектрисой и высотой. \n 4) В равнобедренном треугольнике высота, проведенная к основанию, является биссектрисой и медианой. \n Площадь равнобедренного треугольника находится по формуле: \n S = (1/2) · a · b · sinα ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади треугольника через катет гипотинузу и угол

    //==========//
    
    
    //Расчет площади треугольника через гипотинузу и угол
    
    @IBOutlet weak var EnterAreaThreerangle11b: UITextField!
    @IBOutlet weak var EnterAreaThreerangle11å: UITextField!
    @IBAction func ButtonAreaThreerangle11(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaThreerangle11b, textFieldTwo: EnterAreaThreerangle11å, nameTextOne: "b", nameTextTwo: "α", formuls: 23)
        
//        if EnterAreaThreerangle11b.text != "" && EnterAreaThreerangle11å.text != ""
//        {
//             let newString11b = EnterAreaThreerangle11b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString11å = EnterAreaThreerangle11å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        let AreaThreerangle11b :Double = (newString11b as NSString).doubleValue
//        let AreaThreerangle11å : Double = (newString11å as NSString).doubleValue
//
//            let AreaThreerangle11 = (pow(AreaThreerangle11b, 2))/(4 * tan(AreaThreerangle11å/2))
//            let AreaThreerangle1111 = "Площадь треугольника равна \n \n S = (b²)/4 · tg(α/2) \n \n  S = (\(round(AreaThreerangle11b*1000)/1000)²)/4 · tg(\(round(AreaThreerangle11å*1000)/1000)/2) = \(round(AreaThreerangle11 * 1000)/1000) "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1111)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaThreerangle11b.text == "" && EnterAreaThreerangle11å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaThreerangle11b.text != "" && EnterAreaThreerangle11å.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
    }

    
    
    @IBAction func infoButton10(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Треугольник называется равнобедренным, если у него две стороны равны. Эти стороны называются боковыми, а третья сторона – основанием. \n Свойства равнобедренного треугольника выражают следующие теоремы. \n 1) В равнобедренном треугольнике углы при основании равны. \n 2) В равнобедренном треугольнике биссектриса, проведенная к основанию, является медианой и высотой. \n 3) В равнобедренном треугольнике медиана, проведенная к основанию, является биссектрисой и высотой. \n 4) В равнобедренном треугольнике высота, проведенная к основанию, является биссектрисой и медианой. \n Площадь равнобедренного треугольника находится по формуле: \n  S = (b²)/4 · tg(α/2)", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    //Окончание расчета площади треугольника через гипотинузу и угол
    
    //===========//
    
//Окончание расчета площади равнобедренного треугольника
    
    
    //======================//
    
    
 //Начало расчета площади равностороннего треугольника
    
    //Расчет площади треугольника через стороны
    
    @IBOutlet weak var EnterAreaThreerangle12a: UITextField!
    @IBAction func ButtonAreaThreerangle12(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaThreerangle12a, nameText: "a", formuls: 8)
        
        
//        if EnterAreaThreerangle12a.text != ""
//        {
//             let newString12a = EnterAreaThreerangle12a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle12a:Double = (newString12a as NSString).doubleValue
//
//            let AreaThreerangle12 = (sqrt(3) * pow(AreaThreerangle12a, 2))/(4)
//            let AreaThreerangle1212 = "Площадь треугольника равна \n \n S = (√3 · a²) / 4 \n \n S = (√3 · \(round(AreaThreerangle12a*1000)/1000)²) / 4 = \(round(AreaThreerangle12 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1212)" , style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение" , style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
   
    
    @IBAction func infoButton11(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Равносторонним, называется треугольник, в котором все стороны одинаковой длины, а все три угла равны 60°. \n В таком треугольнике центр вписанной и описанной окружности находятся в одной точке, а радиус описанной окружности равняется двойному радиусу вписанной: \n R = 2 · π \n Учитывая, что все стороны равны и зная их длину, можно легко найти значение по формуле площади правильного треугольника: \n  S = (√3 · a²) / 4 ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади треугольника по стороне
    
    //=========//
    
    
    //Начало расчета площади треугольника через радиус описанной окружности
    
    @IBOutlet weak var EnterAreaThreerangle13R: UITextField!
    @IBAction func ButtonAreaThreerangle13(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaThreerangle13R, nameText: "R", formuls: 9)
        
        
//        if EnterAreaThreerangle13R.text != ""
//        {
//             let newString13R = EnterAreaThreerangle13R.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle13R:Double = (newString13R as NSString).doubleValue
//
//            let AreaThreerangle13 = (3 * sqrt(3) * pow(AreaThreerangle13R, 2))/(4)
//            let AreaThreerangle1313 = "Площадь треугольника равна \n \n S = (3√3 · R²) / 4 \n \n S = (3√3 · \(round(AreaThreerangle13R*1000)/1000)²) / 4 = \(round(AreaThreerangle13 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1313)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle:"Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }

    
    @IBAction func infoButton15(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Равносторонним, называется треугольник, в котором все стороны одинаковой длины, а все три угла равны 60°. \n В таком треугольнике центр вписанной и описанной окружности находятся в одной точке, а радиус описанной окружности равняется двойному радиусу вписанной: \n R = 2 · π \n Можно найти значение через радиус описанной окружности. Площадь треугольника находится по формуле: \n S = (3√3 · R²) / 4 ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади треугольника через радиус описанной окружности
    
    //==========//
    
    //Начало расчета площади треугольника через радиус вписанной окружности
    
    @IBOutlet weak var EnterAreaThreerangle14r: UITextField!
    @IBAction func ButtonAreaThreerangle14(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaThreerangle14r, nameText: "r", formuls: 10)
        
        
//        if EnterAreaThreerangle14r.text != ""
//        {
//             let newString14r = EnterAreaThreerangle14r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaThreerangle14r : Double = (newString14r as NSString).doubleValue
//
//            let AreaThreerangle14 = 3 * sqrt(3) * pow(AreaThreerangle14r, 2)
//            let AreaThreerangle1414 = "Площадь треугольника равна \n \n S = 3√3 · r² \n \n S = 3√3 · \(round(AreaThreerangle14r*1000)/1000)² = \(round(AreaThreerangle14 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1414)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение" , style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    
    @IBAction func infoButton14(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Равносторонним, называется треугольник, в котором все стороны одинаковой длины, а все три угла равны 60°. \n В таком треугольнике центр вписанной и описанной окружности находятся в одной точке, а радиус описанной окружности равняется двойному радиусу вписанной: \n R = 2 · π \n Можно найти значение через радиус вписанной окружности. Площадь треугольника находится по формуле: \n  S = 3√3 · r²", style: AlertStyle.success)
        self.view.endEditing(true)

        
    }
    
    //Окончание расчета площади треугольника через радиус вписанной окружности
    
    //==========//
    
    //Начало расчета площади треугольника через высоты
    @IBOutlet weak var EnterAreaThreerangle15h: UITextField!
    @IBAction func ButtonAreaThreerangle15(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaThreerangle15h, nameText: "h", formuls: 11)
        
//        if EnterAreaThreerangle15h.text != ""
//        {
//             let newString15h = EnterAreaThreerangle15h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            
//            let AreaThreerangle15h:Double = (newString15h as NSString).doubleValue
//            let AreaThreerangle15 = (pow(AreaThreerangle15h, 2))/(sqrt(3))
//            let AreaThreerangle1515 = "Площадь треугольника равна \n \n S = h² / √3 \n \n S = \(round(AreaThreerangle15h*1000)/1000)² / √3 = \(round(AreaThreerangle15 * 1000)/1000) "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaThreerangle1515)" , style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    
    @IBAction func infoButton16(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник – это фигура, которая образуется после соединения трех точек, не лежащих на одной прямой отрезками. Точки называются вершинами, а отрезки сторонами. \n Равносторонним, называется треугольник, в котором все стороны одинаковой длины, а все три угла равны 60°. \n Площадь треугольника находится по формуле: \n S = h² / √3 ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    //Окончание расчета площади треугольнкиа через высоту
    
//Окончание расчета площади равностороннего треугольника
    
    
}//Закрытие контроллера
