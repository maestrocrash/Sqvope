//
//  ViewController.swift
//  Square
//
//  Created by  ShMichail on 18.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import CoreSpotlight
import MobileCoreServices
import UIKit

extension Int {
    var degreesToRadians: Double { return Double(self) * .pi / 180 }
    var radiansToDegrees: Double { return Double(self) * 180 / .pi }
}
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}

class ViewController: UIViewController, UITextFieldDelegate {
    var square: Square!
        
    var projects = [[String]]()
    @IBOutlet weak var b2: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0xFF9500)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
    }
            override func viewDidLoad() {
            super.viewDidLoad()
        
            b2.layer.cornerRadius = 5
            self.navigationController?.hidesBarsOnSwipe = true
          
            //self.navigationController?.navigationBar.tintColor = UIColor.yellowColor() //Цвет итемов в навигационном баре
            //self.navigationController?.navigationBar.barTintColor = UIColorFromRGB(0xC0D684) // Цвет навигационного бара
            //self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColorFromRGB(0xD05353)] // цвет title  in navigation bar

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hidden keyboard to tap on display
  

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
   // override func touchesBegan(touches: Set, withEvent event: UIEvent) {
    
    //}
    
    
    
    
//Начало расчета площади круга
    
    func raschet(a: Int, b: Int) -> Int {
        
        let x = a + b
        
        return x
    }
    
    
    //Расчет площади по диаметру
    @IBOutlet weak var Diametr: UITextField!
    @IBAction func ButtonDiametr(_ sender: UIButton) {
        
        

        allFormulsOneValue(textField: Diametr, nameText: "d", formuls: 1)
        
//        if Diametr.text != "" {
//
//            let newString = Diametr.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let d : Double = (newString as NSString).doubleValue
//            let result = (Double.pi / 4) * pow(d, 2)
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Площадь круга равна \n \n S = (π/4) · d² \n \n S = (π/4) · \(round(d * 1000)/1000)² = \(round(result * 1000)/1000)  ", style: AlertStyle.success)
//
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//
//
//        }
//
    }
    
    
    @IBAction func infoButton(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Окружность есть геометрическое место точек плоскости, равноудаленных от одной ее точки (центра). \n Дуга — это часть окружности. \n Секущая — это прямая проходящая через две точки окружности. \n Хорда — это отрезок секущей, лежащий внутри окружности. С приближением к центру хорда увеличивается. \n Круг есть часть плоскости, лежащая внутри окружности. \n Касательная — это прямая пересекающаяся окружность только в одной точке. Касательная это выродившаяся секущая. \n Отрезок, соединяющий две точки окружности и проходящий через ее центр, называется диаметром. Диаметр состоит из двух радиусов, лежащих на одной прямой. \n Площадь круга находится через диаметр круга и имеет вид: \n S = (π/4) · d²", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площаи по диаметру
    
    //Расчет площади круга по радиусу
    
    @IBOutlet weak var Radius: UITextField!
    @IBAction func ButtonRadius(_ sender: UIButton) {
        
        
        allFormulsOneValue(textField: Radius, nameText: "r", formuls: 2)
        
//        if Radius.text != "" {
//
//             let newString = Radius.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let r:Double = (newString as NSString).doubleValue
//            let result = Double.pi * pow(r, 2)
//            SweetAlert().showAlert(title: "", subTitle:"", style: AlertStyle.success)
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Площадь круга равна \n \n S = π · r² \n \n S = π · \(round(r * 1000)/1000)² = \(round(result * 1000)/1000)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
//
    }
    
    
    @IBAction func infoButton2(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Окружность есть геометрическое место точек плоскости, равноудаленных от одной ее точки (центра). \n Дуга — это часть окружности. \n Секущая — это прямая проходящая через две точки окружности. \n Хорда — это отрезок секущей, лежащий внутри окружности. С приближением к центру хорда увеличивается. \n Круг есть часть плоскости, лежащая внутри окружности. \n Касательная — это прямая пересекающаяся окружность только в одной точке. Касательная это выродившаяся секущая.\n Если точку  центра окружности соединить с произвольными точками на окружности, то все полученные отрезки будут между собой равны, и называются такие отрезки радиусами. \n Площадь круга через находится по формуле: \n S = π · r² " , style: AlertStyle.success)
        self.view.endEditing(true)
    }
    

//Окончание расчета площади круга
    
    
    //==================================//

    
//Начало расчета площади квадрата
        //Расчет площади по стороне
    
    @IBOutlet weak var a: UITextField!
    @IBAction func ButtonSide(_ sender: UIButton) {
        
        allFormulsOneValue(textField: a, nameText: "a", formuls: 3)
        
        
//    let newString = a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        if a.text != ""
//        {
//            let sidea:Double = (newString as NSString).doubleValue
//            let result = pow(sidea, 2)
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle:"Площадь квадрата равна \n \n S = a² \n \n  S = \(round(sidea * 1000) / 1000)² = \(round(result * 1000)/1000)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    @IBAction func infoButton3(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Квадратом называется параллелограмм с прямыми углами и равными сторонами. \n Квадрат есть частный вид прямоугольника, а также частный вид ромба. \n Свойства квадрата: \n все углы квадрата прямые; \n диагонали квадрата равны, взаимно перпендикулярны, точкой пересечения делятся пополам и делят углы квадрата пополам.\n Площадь квадрата равна квадрату длины его стороны: \n S = a² ", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
        //Окончание расчета площади по стороне
        //Расчет площади по диагонале
    
    @IBOutlet weak var Diagonal: UITextField!
    
    @IBAction func ButtonDiagonal(_ sender: UIButton) {
        
        allFormulsOneValue(textField: Diagonal, nameText: "d", formuls: 4)
        
//         let newString = Diagonal.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        if Diagonal.text != ""
//        {
//            let d:Double = (newString as NSString).doubleValue
//            let result = pow(d, 2)/2
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Площадь квадрата равна\n \n S = d²/2 \n \n S = \(round(d * 1000) / 1000)²/2 = \(round(result * 1000)/1000)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    
    @IBAction func info5Button(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Квадратом называется параллелограмм с прямыми углами и равными сторонами. \n Квадрат есть частный вид прямоугольника, а также частный вид ромба. \n Свойства квадрата: \n все углы квадрата прямые; \n диагонали квадрата равны, взаимно перпендикулярны, точкой пересечения делятся пополам и делят углы квадрата пополам. \nПлощадь квадрата равна половине квадрата диагонали: \n  S = d²/2 ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
        //Окончания расчет площади по диагонале
//Закрытие площади квадрата

    
//=======================//
    
    //Начало расчете площади ромба
    
    //Начало расчета площади ромба по формуле S=ah
    
    @IBOutlet weak var EnterAreaDiamond1h: UITextField!
    @IBOutlet weak var EnterAreaDiamond1a: UITextField!
    @IBAction func ButtonDiamond1(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaDiamond1h, textFieldTwo: EnterAreaDiamond1a, nameTextOne: "h", nameTextTwo: "a", formuls: 8)
        
//
//         let newStringh = EnterAreaDiamond1h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//         let newStringa = EnterAreaDiamond1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//        if EnterAreaDiamond1a.text != "" && EnterAreaDiamond1h.text != ""
//        {
//            let AreaDimond1a:Double = (newStringa as NSString).doubleValue
//            let AreaDiamond1h:Double = (newStringh as NSString).doubleValue
//            let AreaDiamond1 = AreaDimond1a * AreaDiamond1h
//            let AreaDiamond11 = "Площадь ромба равна \n \n S = a · h \n \n S = \(round(AreaDimond1a * 1000)/1000) · \(round(AreaDiamond1h * 1000)/1000) = \(round(AreaDiamond1 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен ", subTitle: "\(AreaDiamond11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaDiamond1a.text == "" && EnterAreaDiamond1h.text != ""
//            {
//               SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaDiamond1a.text != "" && EnterAreaDiamond1h.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
            

    @IBAction func infoButton6(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. У квадрата диагонали равны. \n Свойства ромба: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали перпендикулярны; \n 6) диагонали являются биссектрисами его углов. \n Площадь ромба равна произведению длины его стороны и длины опущенной на эту сторону высоты: \n S = a · h ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
 //Окончание расчета площади ромба по формуле S=ah
    
    //=================================//
    
    //Начало расчета площади ромба по формуле S = 1/2d1*d2
    
    @IBOutlet weak var EnterAreaDiamond2d1: UITextField!
    @IBOutlet weak var EnterAreaDiamond2d2: UITextField!
    @IBAction func ButtonAreaDiamond2(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaDiamond2d1, textFieldTwo: EnterAreaDiamond2d2, nameTextOne: "d₁", nameTextTwo: "d₂", formuls: 9)
//
//        if EnterAreaDiamond2d1.text != "" && EnterAreaDiamond2d2.text != ""
//        {
//             let newString2d1 = EnterAreaDiamond2d1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringd2 = EnterAreaDiamond2d2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//
//
//            let AreaDiamond2d1: Double = (newString2d1 as NSString).doubleValue
//            let AreaDiamond2d2:Double = (newStringd2 as NSString).doubleValue
//            let AreaDiamond2 = (1/2) * (AreaDiamond2d1 * AreaDiamond2d2)
//            let AreaDiamond22 = "Площадь ромба равна \n \n S = 1/2 · (d₁ · d₂) \n \n S = 1/2 · \(round(AreaDiamond2d1 * 1000) / 1000) · \(round(AreaDiamond2d2 * 1000) / 1000) = \(round(AreaDiamond2 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaDiamond22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaDiamond2d1.text == "" && EnterAreaDiamond2d2.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d₁", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaDiamond2d1.text != "" && EnterAreaDiamond2d2.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение  d₂", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    
    @IBAction func infoButton12(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. У квадрата диагонали равны. \n Свойства ромба: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали перпендикулярны; \n 6) диагонали являются биссектрисами его углов. \n Площадь ромба равна половине произведению длин его диагоналей. \n S = 1/2 · (d₁ · d₂)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
//Окончание расчета площади ромба по формуле S=1/2*d1*d2
    
    //===========================//
    
    //Начало расчета площади ромба по формуле S=a2*sinå
    
    @IBOutlet weak var EnterAreaDiamond3a: UITextField!
    @IBOutlet weak var EnterAreaDiamond3å: UITextField!
    @IBAction func ButtonAreaDiamond3(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaDiamond3a, textFieldTwo: EnterAreaDiamond3å, nameTextOne: "a", nameTextTwo: "α", formuls: 10)
        
//        
//        if EnterAreaDiamond3a.text != "" && EnterAreaDiamond3å.text != ""
//        {
//             let newString3a = EnterAreaDiamond3a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString3å = EnterAreaDiamond3å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            
//            let AreaDiamond3a:Double = (newString3a as NSString).doubleValue
//            let AreaDiamond3å:Double = (newString3å as NSString).doubleValue
//            let aD = (AreaDiamond3å * Double.pi)/180
//            let AreaDiamond3 = (pow(AreaDiamond3a, 2)) * sin(aD)
//            let AreaDiamond33 = "Площадь ромба равна \n \n S = a² · sinα \n \n S = \(round(AreaDiamond3a * 1000) / 1000)² · sin(\(round(AreaDiamond3å * 1000) / 1000)) = \(round(AreaDiamond3 * 1000)/1000)  "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaDiamond33)", style: AlertStyle.success)
//            self.view.endEditing(true)
//            
//        }
//        else if EnterAreaDiamond3a.text == "" && EnterAreaDiamond3å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaDiamond3a.text != "" && EnterAreaDiamond3å.text == ""
//                {
//                  SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style:AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
    
    
    @IBAction func infoButton23(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. У квадрата диагонали равны. \n Свойства ромба: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали перпендикулярны; \n 6) диагонали являются биссектрисами его углов. \n Площадь ромба равна произведению квадрата длины его стороны и синуса угла между сторонами ромба. \n S = a² · sinα", style: AlertStyle.success)
        self.view.endEditing(true)
    }


    //Окончание расчета площади ромба по формуле S=a2*sinå
    
    
 //===========================//
    
    //Начало расчета площади ромба по формуле S = 4*r^2/sinå
    
    @IBOutlet weak var EnterAreaDiamond4r: UITextField!
    @IBOutlet weak var EnterAreaDiamond4å: UITextField!
    @IBAction func ButtonAreaDiamond4(_ sender: UIButton) {
        
       allFormulsTwoValue(textFieldOne: EnterAreaDiamond4r, textFieldTwo: EnterAreaDiamond4å, nameTextOne: "r", nameTextTwo: "α", formuls: 24)
        
//        if EnterAreaDiamond4r.text != "" && EnterAreaDiamond4å.text != ""
//        {
//
//
//
//            let newString4r = EnterAreaDiamond4r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString4å = EnterAreaDiamond4å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaDiamond4r:Double = (newString4r as NSString).doubleValue
//            let AreaDiamond4å:Double = (newString4å as NSString).doubleValue
//
//            let aD = (AreaDiamond4å * Double.pi)/180
//
//            let AreaDiamond4 = (4 * pow(AreaDiamond4r, 2)) / (sin(aD))
//
//            let AreaDiamond44 = "Площадь ромба равна \n \n S = (4 · r²) / sinα \n \n S = (4 · \(round(AreaDiamond4r * 1000)/1000)²) / sin(\(round(AreaDiamond4å * 1000) / 1000)) = \(round(AreaDiamond4 * 1000)/1000) "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: " \(AreaDiamond44)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaDiamond4r.text == "" && EnterAreaDiamond4å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaDiamond4r.text != "" && EnterAreaDiamond4å.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style:AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    
    @IBAction func infoButton123(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. У квадрата диагонали равны. Свойства ромба: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали перпендикулярны; \n 6) диагонали являются биссектрисами его углов. \n Площадь ромба находится по формуле:  \n S = (4 · r²) / sinα ", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
    //Окончание расчета площади ромба по формуле S = 4 * r^2/sinå
    
    //====================//
    
    //Начало расчет площади ромба по формуле S = 2 * a * r
    
    @IBOutlet weak var EnterAreaDiamond5: UITextField!
    @IBOutlet weak var EnterAreaDiamond5r: UITextField!

    @IBAction func ButtonAreaDiamond5(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaDiamond5, textFieldTwo: EnterAreaDiamond5r, nameTextOne: "a", nameTextTwo: "r", formuls: 25)
        
//        if EnterAreaDiamond5.text != "" && EnterAreaDiamond5r.text != ""
//        {
//
//
//
//            let newString5 = EnterAreaDiamond5.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString5r = EnterAreaDiamond5r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaDiamond5a: Float32 = (newString5 as NSString).floatValue
//            let AreaDiamond5r: Float32 = (newString5r as NSString).floatValue
//
//            let AreaDiamond5 = 2 * AreaDiamond5a * AreaDiamond5r
//            let AreaDiamond55 = "Площадь ромба равна \n \n S = 2 · a · r \n \n S = 2 · \(round(AreaDiamond5a*1000)/1000) · \(round(AreaDiamond5r*1000)/1000) = \(round(AreaDiamond5 * 1000) / 1000) "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaDiamond55)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaDiamond5.text == "" && EnterAreaDiamond5r.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaDiamond5.text != "" && EnterAreaDiamond5r.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//
//                }
            }

  
    
    @IBAction func infoButton98(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. У квадрата диагонали равны. Свойства ромба: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n5) диагонали перпендикулярны; \n 6) диагонали являются биссектрисами его углов. \n Площадь ромба находится по формуле: \n  S = 2 · a · r", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета площади ромба по формуле S = 2 * a *r
    
    //======================//
    
    //Окончание расчета площади ромба
    
    
    //Начало расчета площади параллелограмма
    
    //Расчет площади параллелограмма по формуле S = a * h
    
    @IBOutlet weak var EnterAreaParallelogram1a: UITextField!
    @IBOutlet weak var EnterAreaParallelogram1h: UITextField!
    @IBAction func ButtonAreaParallelogram1(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaParallelogram1a, textFieldTwo: EnterAreaParallelogram1h, nameTextOne: "a", nameTextTwo: "h", formuls: 26)
        
//        if EnterAreaParallelogram1a.text != "" && EnterAreaParallelogram1h.text != ""
//        {
//            let newString1a = EnterAreaParallelogram1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString1h = EnterAreaParallelogram1h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaParallelogram1a : Double = (newString1a as NSString).doubleValue
//            let AreaParallelogram1h : Double = (newString1h as NSString).doubleValue
//            let AreaParallelogram = AreaParallelogram1a * AreaParallelogram1h
//            let AreaParallelogram11 = "Площадь параллелограмма равна \n \n S = a · h \n \n S = \(round(AreaParallelogram1a*1000)/1000) · \(round(AreaParallelogram1h*1000)/1000) = \(round(AreaParallelogram * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaParallelogram11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaParallelogram1a.text  == "" && EnterAreaParallelogram1h.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//            }
//            else if EnterAreaParallelogram1a.text != "" && EnterAreaParallelogram1h.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//
//                }
            }
    
    
    
    @IBAction func infoButton103(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Параллелограммом называется четырехугольник, у которого противолежащие стороны попарно параллельны. \n Свойства параллелограмма: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°. \n Площадь параллелограмма равна произведению длины его стороны и длины опущенной на эту сторону высоты: \n S = a · h", style: AlertStyle.success)
        self.view.endEditing(true)
    }

    //Окончание расчета площади по формуле S = a*H
    
    //================//
    
    //Начало расчета площади по формуле S = a*b*sinå
    
    
    @IBOutlet weak var EnterAreaParallelogram2a: UITextField!
    @IBOutlet weak var EnterAreaParallelogram2b: UITextField!
    @IBOutlet weak var EnterAreaParallelogram2å: UITextField!
    @IBAction func ButtonAreaParallelogram2(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaParallelogram2a, textFieldTwo: EnterAreaParallelogram2b, textFieldThree: EnterAreaParallelogram2å, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "α", formuls: 2)
        
//        if EnterAreaParallelogram2a.text != "" && EnterAreaParallelogram2b.text != "" &&
//        EnterAreaParallelogram2å.text != ""
//        {
//            let newString2a = EnterAreaParallelogram2a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2b = EnterAreaParallelogram2b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2å = EnterAreaParallelogram2å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaParallelogram2a : Double = (newString2a as NSString).doubleValue
//            let AreaParallelogram2b : Double = (newString2b as NSString).doubleValue
//            let AreaParallelogram2å :Double = (newString2å as NSString).doubleValue
//
//            let aD:Double = (AreaParallelogram2å * Double.pi) / 180
//            let AreaParallelogram2 = AreaParallelogram2a * AreaParallelogram2b * (sin(aD))
//
//            let AP1 = round(AreaParallelogram2a*1000)/1000
//            let AP2 = round(AreaParallelogram2b*1000)/1000
//            let AP3 = round(AreaParallelogram2å*1000)/1000
//            let AP4 = round(AreaParallelogram2*1000)/1000
//
//
//            let AreaParallelogram22 = "Площадь параллелограмма равна \n \n S = a · b · sinα \n \n S = \(AP1) · \(AP2) · sin(\(AP3)) = \(AP4) "
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaParallelogram22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaParallelogram2a.text == "" && EnterAreaParallelogram2b.text != "" && EnterAreaParallelogram2å.text != ""
//            {
//               SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//
//            }
//            else if EnterAreaParallelogram2a.text != "" && EnterAreaParallelogram2b.text == "" &&
//                EnterAreaParallelogram2å.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaParallelogram2a.text != "" && EnterAreaParallelogram2b.text != "" &&
//                    EnterAreaParallelogram2å.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    @IBAction func infoButton91(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Параллелограммом называется четырехугольник, у которого противолежащие стороны попарно параллельны. \n Свойства параллелограмма: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°. \n Площадь параллелограмма равна произведению длин его сторон умноженному на синус угла между ними: \n S = a · b · sinα", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета площади параллелограмма по формуле S = a*b*sinå
    
    //=================//
    
    //Начало расчета площади параллелограмма по формуле S = 1/2 d1* d2* sinå
    
    @IBOutlet weak var EnterAreaParallelogram3d1: UITextField!
    @IBOutlet weak var EnterAreaParallelogram3d2: UITextField!
    @IBOutlet weak var EnterAreaParallelogram3å: UITextField!
    @IBAction func ButtonAreaParallelogram3(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaParallelogram3d1, textFieldTwo: EnterAreaParallelogram3d2, textFieldThree: EnterAreaParallelogram3å, nameTextOne: "d₁", nameTextTwo: "d₂", nameTextThree: "α", formuls: 3)
        
//
//        if EnterAreaParallelogram3d1.text != "" && EnterAreaParallelogram3d2.text != ""
//        && EnterAreaParallelogram3å.text != ""
//        {
//            let newString3d1 = EnterAreaParallelogram3d1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3d2 = EnterAreaParallelogram3d2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3å = EnterAreaParallelogram3å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaParallelogram3d1 : Double = (newString3d1 as NSString).doubleValue
//            let AreaParallelogram3d2 : Double = (newString3d2 as NSString).doubleValue
//            let AreaParallelogram3a : Double = (newString3å as NSString).doubleValue
//            let aD :Double = (AreaParallelogram3a * Double.pi) / 180
//
//            let AreaParallelogram3 = (1/2) * (AreaParallelogram3d1 * AreaParallelogram3d2 * sin(aD))
//
//            let AreaP1 = round(AreaParallelogram3d1 * 1000)/1000
//            let AreaP2 = round(round(AreaParallelogram3d2*1000)/1000)
//            let AreaP3 = round(AreaParallelogram3a * 1000)/1000
//            let AreaP4 = round(AreaParallelogram3 * 1000)/1000
//
//            let AreaParallelogram33 = "Площадь параллелограмма равна \n \n S = 1/2 · d₁ · d₂ · sinα \n \n  S = 1/2 · \(AreaP1) · \(AreaP2) · sin(\(AreaP3)) = \(AreaP4)"
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaParallelogram33)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaParallelogram3d1.text == "" && EnterAreaParallelogram3d2.text != "" && EnterAreaParallelogram3å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите зачение d₁", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaParallelogram3d1.text != "" && EnterAreaParallelogram3d2.text == "" && EnterAreaParallelogram3å.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите зачение d₂", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaParallelogram3d1.text != "" && EnterAreaParallelogram3d2.text != "" && EnterAreaParallelogram3å.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите зачение α", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    
    @IBAction func infoButton11(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Параллелограммом называется четырехугольник, у которого противолежащие стороны попарно параллельны. \n Свойства параллелограмма: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°. \n Площадь параллелограмма равна половине произведения длин его диагоналей умноженному на синус угла между ними: \n S = 1/2 · d₁ · d₂ · sinα", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади параллелограмма по формуле S = 1/2 * d * d *sin
    
    //======//
    
    
    //Окончание расчета площади параллелограмма
    
    //=================//
    
    //Начало расчета площади прямоугольника
    
    //Начало расчета площади прямоугольника по формуле S = A*B
    @IBOutlet weak var EnterAreaRectangle1a: UITextField!
    @IBOutlet weak var EnterAreaRectangle1b: UITextField!
    @IBAction func ButtonAreaRectangle1(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaRectangle1a, textFieldTwo: EnterAreaRectangle1b, nameTextOne: "a", nameTextTwo: "b", formuls: 11)
        
//        if EnterAreaRectangle1a.text != "" && EnterAreaRectangle1b.text != ""
//        {
//            let newString1a = EnterAreaRectangle1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString1b = EnterAreaRectangle1b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaRectangle1a : Double = (newString1a as NSString).doubleValue
//            let AreaRectangle1b : Double = (newString1b as NSString).doubleValue
//            let AreaRectangle = AreaRectangle1a * AreaRectangle1b
//            let AreaRectangle11 = "Площадь прямоугольника равна \n \n  S = a · b \n \n S = \(round(AreaRectangle1a*1000)/1000) · \(round(AreaRectangle1b*1000)/1000) = \(round(AreaRectangle * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaRectangle11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaRectangle1a.text == "" && EnterAreaRectangle1b.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaRectangle1a.text != "" && EnterAreaRectangle1b.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    @IBAction func buttinInfo(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Прямоугольником называется параллелограмм, у которого все углы прямые. \n Свойства прямоугольника: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали равны. \n Площадь прямоугольника равна произведению длин двух его смежных сторон : \n S = a · b ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
  //Окончание расчета площаи по формуле S= A*b
    
    //===============//
    
    //Начало расчета площади прямоугольника по формуле S = d2/d1 sinå
    
    @IBOutlet weak var EnterAreaRactangle2d: UITextField!
    @IBOutlet weak var EnterAreaRectangle2å: UITextField!
    @IBAction func ButtonAreaRectangle2(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaRactangle2d, textFieldTwo: EnterAreaRectangle2å, nameTextOne: "d", nameTextTwo: "α", formuls: 12)
        
//        if EnterAreaRactangle2d.text != "" && EnterAreaRectangle2å.text != ""
//        {
//            let newString2d = EnterAreaRactangle2d.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2å = EnterAreaRectangle2å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaRectangle2d : Double = ( newString2d as NSString).doubleValue
//            let AreaRectangle2å : Double = ( newString2å as NSString).doubleValue
//            let aD = (AreaRectangle2å * Double.pi) / 180
//            let AreaRectangle2 = (pow(AreaRectangle2d, 2)/2) * sin(aD)
//            let AreaRectangle22 = "Площадь прямоугольника равна \n \n S = (d² / 2) · sinα \n \n S = (\(round(AreaRectangle2d * 1000)/1000)² / 2) · sin(\(round(AreaRectangle2å*1000)/1000)) = \(round(AreaRectangle2 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaRectangle22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaRactangle2d.text == "" && EnterAreaRectangle2å.text != ""
//             {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaRectangle2å.text == "" && EnterAreaRactangle2d.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
            }

    
    @IBAction func buttonInfo2(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Прямоугольником называется параллелограмм, у которого все углы прямые. \n Свойства прямоугольника: \n 1) противолежащие стороны равны; \n 2)противоположные углы равны; \n 3)диагонали точкой пересечения делятся пополам; \n 4)сумма углов, прилежащих к одной стороне, равна 180°; \n 5) диагонали равны. \n Площадь прямоугольника находтся по формуле: \n  S = (d² / 2) · sinα ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
 //Окончание расчета площади прямоугольника по формуле S = D2/d1 sinå
    
    //Окончание расчета площади прямоугольника
    
    //===================//
    
    //Начало расчета площади трапеции
    
    //Расчет площади трапеции по формуле S = A+b/h
    
    @IBOutlet weak var EnterAreaKeystonea: UITextField!
    @IBOutlet weak var EnterAreaKeystoneb: UITextField!
    @IBOutlet weak var EnterAreaKeystoneh: UITextField!
    @IBAction func ButtonAreaKeystone(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaKeystonea, textFieldTwo: EnterAreaKeystoneb, textFieldThree: EnterAreaKeystoneh, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "h", formuls: 4)
        
//        if EnterAreaKeystonea.text != "" && EnterAreaKeystoneb.text != "" && EnterAreaKeystoneh.text != ""
//        {
//            let newStringa = EnterAreaKeystonea.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringb = EnterAreaKeystoneb.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringh = EnterAreaKeystoneh.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaKeystoneA:Double = (newStringa as NSString).doubleValue
//            let AreaKeystoneB:Double = (newStringb as NSString).doubleValue
//            let AreaKeystoneH:Double = (newStringh as NSString).doubleValue
//            let AreaKeystone = (((AreaKeystoneA + AreaKeystoneB)/2) * AreaKeystoneH)
//
//            let AreaKeystone1 = round(AreaKeystoneA*1000)/1000
//            let AreaKeystone2 = (round(AreaKeystoneB*1000)/1000)/2
//            let AreaKeystone3 = round(AreaKeystoneH*1000)/1000
//            let AreaKeystone4 = round(AreaKeystone * 1000)/1000
//
//
//            let AreaKeystone11 = "Площадь трапеции равна \n \n S = ((a + b)/2) · h \n \n S = ((\(AreaKeystone1) + \(AreaKeystone2))/2) · \(AreaKeystone3) = \(AreaKeystone4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaKeystone11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaKeystonea.text == "" && EnterAreaKeystoneb.text != "" && EnterAreaKeystoneh.text != ""
//            {
//
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaKeystonea.text != "" && EnterAreaKeystoneb.text == "" && EnterAreaKeystoneh.text != ""
//            {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//            }
//            else if EnterAreaKeystonea.text != "" && EnterAreaKeystoneb.text != "" && EnterAreaKeystoneh.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }
    
    @IBAction func infoButton14(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, у которого две противолежащие стороны параллельны, а две другие непараллельны. \n Параллельные стороны трапеции называются ее основаниями, а непараллельные стороны — боковыми сторонами. \n Отрезок, соединяющий середины боковых сторон, называется средней линией. \n Свойства трапеции: \n 1) ее средняя линия параллельна основаниям и равна их полусумме; \n 2) если трапеция равнобокая, то ее диагонали равны и углы при основании равны; \n 3) если трапеция равнобокая, то около нее можно описать окружность; \n 4)если сумма оснований равна сумме боковых сторон, то в нее можно вписать окружность. \n Площадь трапеции равна произведению полусуммы ее оснований (a, b) на высоту (h): \n S = ((a + b)/2) · h ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    

    //Окончание расчета площади трапеции по формуле S=a=b/2*h
    
    //===============//
    
    //Начало расчета площади трапеции по формуле S=h*m
    
    @IBOutlet weak var EnterAreaKeystone2h: UITextField!
    @IBOutlet weak var EnterAreaKeystone2m: UITextField!
    @IBAction func ButtonAreaKeystone2(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaKeystone2h, textFieldTwo: EnterAreaKeystone2m, nameTextOne: "h", nameTextTwo: "m", formuls: 13)
//
//        if EnterAreaKeystone2h.text != "" && EnterAreaKeystone2m.text != ""
//        {
//            let newString2h = EnterAreaKeystone2h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2m = EnterAreaKeystone2m.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaKeystone2h:Double = (newString2h as NSString).doubleValue
//            let AreaKeystone2m:Double = (newString2m as NSString).doubleValue
//
//            let AreaKeystone2 = AreaKeystone2h * AreaKeystone2m
//            let AreaKeystone22 = "Площадь трапеции равна \n \n S = h · m \n  \n S = \(round(AreaKeystone2h*1000)/1000) · \(round(AreaKeystone2m*1000)/1000) = \(round(AreaKeystone2 * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaKeystone22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaKeystone2h.text == "" && EnterAreaKeystone2m.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaKeystone2h.text != "" && EnterAreaKeystone2m.text == ""
//                {
//                   SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение m", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style:AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }

    
    @IBAction func infoButon15(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, у которого две противолежащие стороны параллельны, а две другие непараллельны. \n Параллельные стороны трапеции называются ее основаниями, а непараллельные стороны — боковыми сторонами. \n Отрезок, соединяющий середины боковых сторон, называется средней линией. \n Свойства трапеции: \n 1) ее средняя линия параллельна основаниям и равна их полусумме; \n 2) если трапеция равнобокая, то ее диагонали равны и углы при основании равны; \n 3) если трапеция равнобокая, то около нее можно описать окружность; \n 4)если сумма оснований равна сумме боковых сторон, то в нее можно вписать окружность. \n Площадь трапеции находится по формуле : \n S = h · m", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
  
    
//Окончание расчета площади по формуле S = h*m
    
    //============//
    
    //Начало расчета площади по формуле S = a+b/2 * корень
    
    @IBOutlet weak var EnterAreaKeystone3a: UITextField!
    @IBOutlet weak var EnterAreaKeystone3b: UITextField!
    @IBOutlet weak var EnterAreaKeystone3c: UITextField!
    @IBOutlet weak var EnterAreaKeystone3d: UITextField!
    @IBAction func ButtonAreaKeystone3(_ sender: UIButton) {
    
        allFormulsFourVaribles(textFieldOne: EnterAreaKeystone3a, textFieldTwo: EnterAreaKeystone3b, textFieldThree: EnterAreaKeystone3c, textFieldFour: EnterAreaKeystone3d, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", nameTextFour: "d", formuls: 2)
        
//
//    if EnterAreaKeystone3a.text != "" && EnterAreaKeystone3b.text != "" &&
//        EnterAreaKeystone3c.text != "" && EnterAreaKeystone3d.text != ""
//        {
//            let newString3a = EnterAreaKeystone3a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3b = EnterAreaKeystone3b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3c = EnterAreaKeystone3c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3d = EnterAreaKeystone3d.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaKeystone3a:Double = (newString3a as NSString).doubleValue
//            let AreaKeystone3b:Double = (newString3b as NSString).doubleValue
//            let AreaKeystone3c:Double = (newString3c as NSString).doubleValue
//            let AreaKeystone3d:Double = (newString3d as NSString).doubleValue
//            let AreaKeystone3 = ((AreaKeystone3a + AreaKeystone3b)/2) *
//                sqrt(pow(AreaKeystone3c, 2) - pow(((pow(AreaKeystone3b - AreaKeystone3a, 2) + pow(AreaKeystone3c, 2) - pow(AreaKeystone3d, 2))/(2 * (AreaKeystone3b - AreaKeystone3a))), 2))
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Площадь равна  \n \n S = ((a + b) / 2) · √(c² - ((b - a)² + c² - d²) / 2 · (b - a))) \n \n S = ((\(AreaKeystone3a) + \(AreaKeystone3b)) / 2) · √(\(AreaKeystone3c)² - \(AreaKeystone3b)) - \(AreaKeystone3a)² + \(AreaKeystone3c)² - \(AreaKeystone3d)²) / 2 · (\(AreaKeystone3b) - \(AreaKeystone3a)))) = \(round(AreaKeystone3*1000)/1000)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if   EnterAreaKeystone3a.text == "" && EnterAreaKeystone3b.text != "" && EnterAreaKeystone3c.text != "" && EnterAreaKeystone3d.text != ""
//            {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//
//            }
//            else if EnterAreaKeystone3a.text != "" && EnterAreaKeystone3b.text == "" && EnterAreaKeystone3c.text != "" && EnterAreaKeystone3d.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaKeystone3a.text != "" && EnterAreaKeystone3b.text != "" && EnterAreaKeystone3c.text == "" && EnterAreaKeystone3d.text != ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else if EnterAreaKeystone3a.text != "" && EnterAreaKeystone3b.text != "" && EnterAreaKeystone3c.text != "" && EnterAreaKeystone3d.text == ""
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                            self.view.endEditing(true)
//                        }
//                        else
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                            self.view.endEditing(true)
//                        }
                    }

    @IBAction func infoButton16(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, у которого две противолежащие стороны параллельны, а две другие непараллельны. \n Параллельные стороны трапеции называются ее основаниями, а непараллельные стороны — боковыми сторонами. \n Отрезок, соединяющий середины боковых сторон, называется средней линией. \n Свойства трапеции: \n 1) ее средняя линия параллельна основаниям и равна их полусумме; \n 2) если трапеция равнобокая, то ее диагонали равны и углы при основании равны; \n 3) если трапеция равнобокая, то около нее можно описать окружность; \n 4)если сумма оснований равна сумме боковых сторон, то в нее можно вписать окружность. \n Площадь трапеции находится по формуле : \n S = ((a + b) / 2) · √(c² - ((b - a)² + c² - d²) / 2 · (b - a)))", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    
  //Окончание расчета площади по формуле с корнем 
    
    //=========//
    
    //Начало расчета по формуле S = 1/2 d1 * d2 sinå
    
    @IBOutlet weak var EnterAreaKeystone4d1: UITextField!
    @IBOutlet weak var EnterAreaKeystone4d2: UITextField!
    @IBOutlet weak var EnterAreaKeystone4å: UITextField!
    @IBAction func ButtonAreaKeystone4(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaKeystone4d1, textFieldTwo: EnterAreaKeystone4d2, textFieldThree: EnterAreaKeystone4å, nameTextOne: "d₁", nameTextTwo: "d₂", nameTextThree: "α", formuls: 5)
        
//        if EnterAreaKeystone4d1.text != "" && EnterAreaKeystone4d2.text != "" &&
//        EnterAreaKeystone4å.text != ""
//        {
//            let newString4d1 = EnterAreaKeystone4d1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString4d2 = EnterAreaKeystone4d2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString4å = EnterAreaKeystone4å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//
//            let AreaKeystone4d1 : Double = (newString4d1 as NSString).doubleValue
//            let AreaKeystone4d2 : Double = (newString4d2 as NSString).doubleValue
//            let AreaKeystone4a : Double = (newString4å as NSString).doubleValue
//
//            let aD = (AreaKeystone4a * Double.pi) / 180
//
//            let AreaKeystone4 = (1/2) * AreaKeystone4d1 * AreaKeystone4d2 * sin(aD)
//
//            let AK1 = round(AreaKeystone4d1*1000)/1000
//            let AK2 = round(AreaKeystone4d2*1000)/1000
//            let AK3 = round(AreaKeystone4a*1000)/1000
//            let AK4 = round(AreaKeystone4 * 1000)/1000
//
//
//
//            let AreaKeystone44 = "Площадь трапеции равна \n \n S = 1/2 · d₁ · d₂ · sinα \n \n S = 1/2 · \(AK1) · \(AK2) · sin(\(AK3)) = \(AK4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaKeystone44)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaKeystone4d1.text == "" && EnterAreaKeystone4d2.text != "" && EnterAreaKeystone4å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d₁", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaKeystone4d1.text != "" && EnterAreaKeystone4d2.text == "" && EnterAreaKeystone4å.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d₂", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaKeystone4d1.text != "" && EnterAreaKeystone4d2.text != "" && EnterAreaKeystone4å.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style : AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    @IBAction func infoButton20(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, у которого две противолежащие стороны параллельны, а две другие непараллельны. \n Параллельные стороны трапеции называются ее основаниями, а непараллельные стороны — боковыми сторонами. \n Отрезок, соединяющий середины боковых сторон, называется средней линией. \n Свойства трапеции: \n 1) ее средняя линия параллельна основаниям и равна их полусумме; \n 2) если трапеция равнобокая, то ее диагонали равны и углы при основании равны; \n 3) если трапеция равнобокая, то около нее можно описать окружность; \n 4)если сумма оснований равна сумме боковых сторон, то в нее можно вписать окружность. /n Площадь трапеции находится по формуле: \n S = 1/2 · d₁ · d₂ · sinα ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
   
    
  //Окончание расчета площади по двум диагоналям
    
    //================//
    
    //Начало расчета площади по формуле S = 4 * r^2/sinå
    
    @IBOutlet weak var EnterAreaKeystone5r: UITextField!
    @IBOutlet weak var EnterAreaKeystone5å: UITextField!
    @IBAction func ButtonAreaKeystone5(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaKeystone5r, textFieldTwo: EnterAreaKeystone5å, nameTextOne: "r", nameTextTwo: "α", formuls: 14)
        
//        if EnterAreaKeystone5r.text != "" && EnterAreaKeystone5å.text != ""
//        {
//            let newString5r = EnterAreaKeystone5r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString5å = EnterAreaKeystone5å.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaKeystone5r:Double = (newString5r as NSString).doubleValue
//            let Areakeystone5å: Double = (newString5å as NSString).doubleValue
//            let aD = (Areakeystone5å * Double.pi) / 180
//            let AreaKeystone5 = (4 * pow(AreaKeystone5r, 2))/(sin(aD))
//            let AreaKeystone55 = "Площадь трапеции равна \n \n S = (4 · r²)/sinα \n \n S = (4 · \(round(AreaKeystone5r*1000)/1000)²) / sin(\(round(Areakeystone5å*1000)/1000)) = \(round(AreaKeystone5 * 1000) / 1000) "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaKeystone55)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaKeystone5r.text == "" && EnterAreaKeystone5å.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaKeystone5r.text != "" && EnterAreaKeystone5å.text == ""
//                {
//                   SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
        
            }
    
    @IBAction func infoButton21(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, у которого две противолежащие стороны параллельны, а две другие непараллельны. \n Параллельные стороны трапеции называются ее основаниями, а непараллельные стороны — боковыми сторонами. \n Отрезок, соединяющий середины боковых сторон, называется средней линией. \n Свойства трапеции: \n 1) ее средняя линия параллельна основаниям и равна их полусумме; \n 2) если трапеция равнобокая, то ее диагонали равны и углы при основании равны; \n 3) если трапеция равнобокая, то около нее можно описать окружность; \n 4)если сумма оснований равна сумме боковых сторон, то в нее можно вписать окружность. \n Трапеция называется равнобедренной (или равнобокой), если ее боковые стороны равны. \n Площадь трапеции находится по формуле: \n S = (4 · r²)/sinα ", style: AlertStyle.success)
        self.view.endEditing(true)
    }

    
 //Окончание расчета площади по формуле S = 4 * r^2/sinå
    
    //Окончание расчета площади трапеции
    
    //====================//
    
    
    //Начало расчета площади четырехугольника
    
    //Начало расчета площади произвольного четырехугольника
    @IBOutlet weak var EnterAreaQuadrangle1d1: UITextField!
    @IBOutlet weak var EnterAreaQuadrangle1d2: UITextField!
    @IBOutlet weak var EnterAreaQuadrangle1a: UITextField!
    @IBAction func ButtonAreaQuadrangle1(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterAreaQuadrangle1d1, textFieldTwo: EnterAreaQuadrangle1d2, textFieldThree: EnterAreaQuadrangle1a, nameTextOne: "d₁", nameTextTwo: "d₂", nameTextThree: "α", formuls: 6)

//        if EnterAreaQuadrangle1d1.text != "" && EnterAreaQuadrangle1d2.text != "" && EnterAreaQuadrangle1a.text != ""
//        {
//            
//            let newString1d1 = EnterAreaQuadrangle1d1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString1d2 = EnterAreaQuadrangle1d2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString1å = EnterAreaQuadrangle1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            
//            let AreaQuadrangle1d1:Double = (newString1d1 as NSString).doubleValue
//            let AreaQuadrangle1d2: Double = (newString1d2 as NSString).doubleValue
//            let AreaQuarangle1a: Double = (newString1å as NSString).doubleValue
//            let aD = (AreaQuarangle1a * Double.pi) / 180
//            let AreaQuadrangle :Double = (1/2) * (AreaQuadrangle1d1 * AreaQuadrangle1d2 * sin(aD))
//            
//            let areaQuad1 = round(AreaQuadrangle1d1*1000)/1000
//            let areaQuad2 = round(AreaQuadrangle1d2*1000)/1000
//            let areaQuad3 = round(AreaQuarangle1a*1000)/1000
//            let areaQuad4 = round(AreaQuadrangle*1000)/1000
//            
//            
//            let AreaQuadrangle11 = "Площадь четырехугольник равна \n \n S = 1/2·(d₁ · d₂ · sinα) \n \n S = 1/2·(\(areaQuad1) · \(areaQuad2) · sin(\(areaQuad3))) = \(areaQuad4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: " \(AreaQuadrangle11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaQuadrangle1d1.text == "" && EnterAreaQuadrangle1d2.text != "" && EnterAreaQuadrangle1a.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d₁", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaQuadrangle1d1.text != "" && EnterAreaQuadrangle1d2.text == "" && EnterAreaQuadrangle1a.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d₂", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaQuadrangle1d1.text != "" && EnterAreaQuadrangle1d2.text != "" && EnterAreaQuadrangle1a.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение α", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    }
                }
    
    @IBAction func infoButton22(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Четырехугольником называется фигура, которая состоит из четырех точек и четырех последовательно соединяющих их отрезков. При этом никакие три из данных точек не лежат на одной прямой, а соединяющие их отрезки не пересекаются. \n Две несмежные стороны четырехугольника называются противоположными . Две вершины, не являющиеся соседними, называются также противоположными. \n Площадь четырехугольника находится по формуле: \n S = 1/2·(d₁ · d₂ · sinα)", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание расчета площади произвольного четырехугольника
    
    //==========//
    
    //Начало расчета площади вписанного четырехугольника
    
    @IBOutlet weak var EnterAreaQuadrectangle2a: UITextField!
    @IBOutlet weak var EnterAreaQuadrectangle2b: UITextField!
    @IBOutlet weak var EnterAreaQuadrectangle2c: UITextField!
    @IBOutlet weak var EnterAreaQuadractangle2p: UITextField!
    @IBAction func ButtonAreaQuadrangle(_ sender: UIButton) {
        
        allFormulsFourVaribles(textFieldOne: EnterAreaQuadrectangle2a, textFieldTwo: EnterAreaQuadrectangle2b, textFieldThree: EnterAreaQuadrectangle2c, textFieldFour: EnterAreaQuadractangle2p, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", nameTextFour: "p", formuls: 3)
        
//        if EnterAreaQuadrectangle2a.text != "" && EnterAreaQuadrectangle2b.text != "" && EnterAreaQuadrectangle2c.text != "" && EnterAreaQuadractangle2p.text != ""
//        {
//
//            let newString2a = EnterAreaQuadrectangle2a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2b = EnterAreaQuadrectangle2b.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2c = EnterAreaQuadrectangle2c.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2p = EnterAreaQuadractangle2p.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaQuadrangle2a:Double = (newString2a as NSString).doubleValue
//            let AreaQuadrangle2b:Double = (newString2b as NSString).doubleValue
//            let AreaQuadrangle2c:Double = (newString2c as NSString).doubleValue
//            let AreaQuadrangle2d:Double = (newString2p as NSString).doubleValue
//            let p = (1/2)*(AreaQuadrangle2a + AreaQuadrangle2b + AreaQuadrangle2c + AreaQuadrangle2d)
//            let AreaQuadrangle2 = ((p - AreaQuadrangle2a) * (p - AreaQuadrangle2b) * (p - AreaQuadrangle2c) * (p - AreaQuadrangle2d))
//
//            let AQ1 = round(p * 100)/100
//            let AQ2 = round(AreaQuadrangle2a*100)/100
//            let AQ3 = round(AreaQuadrangle2b*100)/100
//            let AQ4 = round(AreaQuadrangle2c*100)/100
//            let AQ5 = round(AreaQuadrangle2d*100)/100
//
//
//            let AreaQuadrangle22 = "Площадь четырехугольника равна \n\n S = √((p - a)·(p - b)·(p - c)·(p - d)) \n \n S = √(\(AQ1) - \(AQ2))·(\(AQ1) - \(AQ3))·(\(AQ1)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaQuadrangle22)- \(AQ4))·(\(AQ1) - \(AQ5)) = \(round(AreaQuadrangle2*100)/100)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterAreaQuadrectangle2a.text == "" && EnterAreaQuadrectangle2b.text != "" && EnterAreaQuadrectangle2c.text != "" && EnterAreaQuadractangle2p.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaQuadrectangle2a.text != "" && EnterAreaQuadrectangle2b.text == "" && EnterAreaQuadrectangle2c.text != "" && EnterAreaQuadractangle2p.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if EnterAreaQuadrectangle2a.text != "" && EnterAreaQuadrectangle2b.text != "" && EnterAreaQuadrectangle2c.text == "" && EnterAreaQuadractangle2p.text != ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else if EnterAreaQuadrectangle2a.text != "" && EnterAreaQuadrectangle2b.text != "" && EnterAreaQuadrectangle2c.text != "" && EnterAreaQuadractangle2p.text == ""
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение d", style: AlertStyle.warning)
//                            self.view.endEditing(true)
//                        }
//                        else
//                        {
//                            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                            self.view.endEditing(true)
//
//                        }
                    }

    @IBAction func infoButton25(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Четырёхугольник, все вершины которого лежат на окружности, называется вписанным. Сумма противоположных углов вписанного четырёхугольника равна 180°. Произведение диагоналей вписанного четырёхугольника равно сумме произведений противоположных сторон (теорема Птолемея). \n Площадь S вписанного четырёхугольника со сторонами a, b, c, d можно вычислить по формулам:\n S = √((p - a)·(p - b)·(p - c)·(p - d)) ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
   //Окончание расчета площади вписанного четырехугольника
    
    //===========//
    
    //Окончание расчета площади четырехугольника
    
    //===================//
    
    //Начало расчета площади правильного шестеугольника по стороне
    
    
    @IBOutlet weak var EnterAreaSixRangle1a: UITextField!
    @IBAction func ButtonAreaSixrangle1(_ sender: UIButton) {
        
        
        allFormulsOneValue(textField: EnterAreaSixRangle1a, nameText: "a", formuls: 5)
//
//        if EnterAreaSixRangle1a.text != ""
//        {
//             let newString1a = EnterAreaSixRangle1a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaSixrangle1a : Double = (newString1a as NSString).doubleValue
//
//            let AreaSixrangle1 = (((3 * sqrt(3)) * pow(AreaSixrangle1a, 2)) / (2))
//
//            let AreaSixrangle11 = "Площадь шестиугольника равна \n \n S = (3√3 · a²) / 2 \n \n S = (3√3 · \(round(AreaSixrangle1a*1000)/1000)²)/2 = \(round(AreaSixrangle1 * 1000) / 1000)"
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaSixrangle11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else
//        {
//
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style : AlertStyle.error)
//            self.view.endEditing(true)
//
//        }
        
    }
    
    
    @IBAction func infoButton26(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Шестиугольник - это многоугольник, общее количество углов (вершин) которого равно шести. \n Выпуклый шестиугольник - это многоугольник, с общим количеством вершин, равным шести, при этом все точки такого шестиугольника лежат по одну сторону от прямой, которая проведена между двумя любыми соседними его вершинами. \n Свойства правильного шестиугольника: \n 1)все внутренние углы равны между собой; \n 2)каждый внутренний угол правильного шестиугольника равен 120 градусам; \n 3) все стороны равны между собой; \n 4) сторона правильного шестиугольника равна радиусу описанной окружности; \n 5) правильный шестиугольник заполняет плоскость без пробелов и наложений. \n Площадь правильного шестиугольника равна трем корням из трех пополам, умноженным на квадрат стороны описанной окружности и находится по формуле:\n S = (3√3 · a²) / 2 \n ", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
  //Окончание расчета площади правильго 6угольника по стороне
    
    //============//
    
    //Начало расчета площади 6угольника через радиус описанной окружности
    @IBOutlet weak var EnterAreaSixrangle2R: UITextField!
    @IBAction func ButtonAreaSixrangle(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaSixrangle2R, nameText: "R", formuls: 6)
//        
//        if EnterAreaSixrangle2R.text != ""
//        {
//            let newString2R = EnterAreaSixrangle2R.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            
//            let AreaSixrangle2R:Double = (newString2R as NSString).doubleValue
//            let AreaSixrangle2 = (((3 * sqrt(3)) * pow(AreaSixrangle2R, 2)) / (2))
//            let AreaSixrangle22 = "Площадь шестиугольника равна \n \n S = (3√3 · R²) / 2 \n \n S = (3√3 · \(round(AreaSixrangle2R*1000)/1000)²)/2 = \(round(AreaSixrangle2 * 1000) / 1000)"
//           SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaSixrangle22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style : AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    @IBAction func infoButton27(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Шестиугольник - это многоугольник, общее количество углов (вершин) которого равно шести. \n Выпуклый шестиугольник - это многоугольник, с общим количеством вершин, равным шести, при этом все точки такого шестиугольника лежат по одну сторону от прямой, которая проведена между двумя любыми соседними его вершинами. \n Свойства правильного шестиугольника: \n 1)все внутренние углы равны между собой; \n 2)каждый внутренний угол правильного шестиугольника равен 120 градусам; \n 3) все стороны равны между собой; \n 4) сторона правильного шестиугольника равна радиусу описанной окружности; \n 5) правильный шестиугольник заполняет плоскость без пробелов и наложений. \n Площадь правильного шестиугольника равна трем корням из трех пополам, умноженным на квадрат радиуса описанной окружности и находится по формуле:\n S = (3√3 · R²) / 2 \n ", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
 //Окончание расчета площади 6угольника по радиусу
    
    //====///
    
    //Начало расчета площади 6угольника по радиусу вписанной окружности
    
    @IBOutlet weak var EnterAreaSixrangle3r: UITextField!
    @IBAction func ButtonAreaSixragnle3(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterAreaSixrangle3r, nameText: "r", formuls: 7)
        
//        if EnterAreaSixrangle3r.text != ""
//        {
//
//             let newString3r = EnterAreaSixrangle3r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaSixragnle3: Double = (newString3r as NSString).doubleValue
//
//            let AreaSixrangle = 2 * sqrt(3) * pow(AreaSixragnle3, 2)
//            let AreaSixrangle33 = "Площадь шестиугольника равна \n \n S = 2√3 · r² \n \n S = (2√3 · \(round(AreaSixragnle3*1000)/1000)) = \(round(AreaSixrangle * 1000)/1000)"
//          SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaSixrangle33)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    @IBAction func infoButton29(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Шестиугольник - это многоугольник, общее количество углов (вершин) которого равно шести. \n Выпуклый шестиугольник - это многоугольник, с общим количеством вершин, равным шести, при этом все точки такого шестиугольника лежат по одну сторону от прямой, которая проведена между двумя любыми соседними его вершинами. \n Свойства правильного шестиугольника: \n 1)все внутренние углы равны между собой; \n 2)каждый внутренний угол правильного шестиугольника равен 120 градусам; \n 3) все стороны равны между собой; \n 4) сторона правильного шестиугольника равна радиусу описанной окружности; \n 5) правильный шестиугольник заполняет плоскость без пробелов и наложений. \n Пплощадь правильного шестиугольника равна двум корням из трех, умноженным на квадрат радиуса вписанной окружности и находится по формуле: \n S = 2√3 · r² / 2 \n ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Окончание разработки площади по радиусу описанной окружности
    
    //====//
    
    //Начало расчета площади эллипса
    
    @IBOutlet weak var EnterAreaEllipse: UITextField!
    @IBOutlet weak var EnterAreaEllipse1: UITextField!
    @IBAction func ButtonAreaEllipse(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaEllipse, textFieldTwo: EnterAreaEllipse1, nameTextOne: "r₁", nameTextTwo: "r₂", formuls: 15)
        
//        if EnterAreaEllipse.text != "" && EnterAreaEllipse1.text != ""
//        {
//             let newString = EnterAreaEllipse.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString1 = EnterAreaEllipse1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//
//            let AreaEllipser1:Double = (newString as NSString).doubleValue
//            let AreaEllpser2:Double = (newString1 as NSString).doubleValue
//
//            let AreaEllipse = Double.pi * AreaEllipser1 * AreaEllpser2
//
//            let AreaEllipse11 = "Площадь эллипса равна \n \n S = π · r₁ · r₂ \n \n S = π · \(round(AreaEllipser1*1000)/1000) · \(round(AreaEllpser2*1000)/1000) = \(round(AreaEllipse*1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaEllipse11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//
//        }
//        else if EnterAreaEllipse.text == "" && EnterAreaEllipse1.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r₁ ", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaEllipse.text != "" && EnterAreaEllipse1.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r₂", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
    
    
    @IBAction func infoEllips(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Эллипс - это геометрическая фигура, которая ограничена кривой, заданной уравнением (x²/a²) + (y²/b²) = 1. \n Он имеет два фокуса. Фокусами называются такие две точки, сумма расстояний от которых до любой точки эллипса есть постоянная величина.\n Площадь эллипса находится через два его радиуса, по формуле: \n S = π · r₁ · r₂ .", style: AlertStyle.success)
        self.view.endEditing(true)
        
        }

    //Окончание расчета эллипса
    
    ////=====
    
    //Начало расчета площади кольца 
    
    @IBOutlet weak var EnterAreaRingR: UITextField!
    @IBOutlet weak var EnterAreaRingr: UITextField!
    @IBAction func ButtonAreaRing(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterAreaRingR, textFieldTwo: EnterAreaRingr, nameTextOne: "R", nameTextTwo: "r", formuls: 16)
//
//        if EnterAreaRingR.text != "" && EnterAreaRingr.text != ""
//        {
//            let newStringR = EnterAreaRingR.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringr = EnterAreaRingr.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaRingR : Double = (newStringR as NSString).doubleValue
//            let AreaRingr : Double = (newStringr as NSString).doubleValue
//
//            let AreaRing = (Double.pi * (pow(AreaRingR, 2) - pow(AreaRingr, 2)))
//            let AreaRing11 = "Площадь кольца равна \n \n S = π · (R² - r²) \n \n S = π · (\(round(AreaRingR*1000)/1000)² - \(round(AreaRingr*1000)/1000)²) = \(round(AreaRing*1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaRing11)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterAreaRingR.text == "" && EnterAreaRingr.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение R", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterAreaRingR.text != "" && EnterAreaRingr.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
    @IBAction func infoButton30(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Кольцо – это плоская геометрическая фигура, которая представляет собой часть плоскости между двумя окружностями с общим центром, но имеющими разный радиус. \n Площадь кольца через радиусы находится как произведение числа π на разность квадратов внешнего и внутреннего радиусов кольца, и записывается по формуле: \n  S = π · (R² - r²) ", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    //Начало расчета площади сектора круга
    @IBOutlet weak var d: UITextField!
    @IBOutlet weak var alpha: UITextField!
  
    @IBAction func segmentKryga(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: d, textFieldTwo: alpha, nameTextOne: "r", nameTextTwo: "A", formuls: 17)
        
//
//        if d.text != "" && alpha.text != ""
//        {
//            let newStringD = d.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringAlpha = alpha.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let AreaSectorCircleR : Double = (newStringD as NSString).doubleValue
//            let AreaSectorCircleAlpha : Double = (newStringAlpha as NSString).doubleValue
//
//            //let AreaSectorCircle = (1/2) * (pow(AreaSectorCircleR,2)*(((Double.pi*AreaSectorCircleAlpha)/180)*sin(AreaSectorCircleAlpha)))
//
//            //let areaSectorCircleAlphaRad = AreaSectorCircleAlpha.degreesToRadians * (Double.pi / Double(360).degreesToRadians)
//
//            let AreaSectorCircle = (Double.pi * pow(AreaSectorCircleR,2) * AreaSectorCircleAlpha.degreesToRadians)/(Double(360).degreesToRadians)
//
//            let AreaSectorCircle1 = "Площадь сектора круга равна \(round(AreaSectorCircle*1000)/1000)"
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(AreaSectorCircle1)", style: .success)
//            self.view.endEditing(true)
//        }
//        else if d.text == "" && alpha.text != ""{
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: .warning)
//            self.view.endEditing(true)
//        }
//        else if d.text != "" && alpha.text == ""{
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение A", style: .warning)
//            self.view.endEditing(true)
//        }
//        else if d.text == "" && alpha.text == ""{
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: .error)
//            self.view.endEditing(true)
//        }
    }
    
    //Начало расчета сегмента круга
    @IBOutlet weak var areaSegmentCircleR: UITextField!
    @IBOutlet weak var areaSegmentCircleAlpha: UITextField!
    
    @IBAction func calculationSegmantCircle(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: areaSegmentCircleR, textFieldTwo: areaSegmentCircleAlpha, nameTextOne: "R", nameTextTwo: "α", formuls: 18)
//
//        if areaSegmentCircleR.text != "" && areaSegmentCircleAlpha.text != "" {
//            let newR = areaSegmentCircleR.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newAlpha = areaSegmentCircleAlpha.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let R : Double = (newR as NSString).doubleValue
//            let Alpha: Double = (newAlpha as NSString).doubleValue
//
//            if Alpha > 180 {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Угол сегмента не может превышать 180 градусов!", style: .warning)
//                self.viewDidLoad()
//            }
//            else{
//
//            let calculation = (pow(Double(R), 2)/2)*(Double.pi*(Double(Alpha)/180) - sin(Double(Alpha).degreesToRadians))
//
//
//            let writeCalculatin = "Площадь сегмента круга равна \(round(calculation*1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(writeCalculatin)", style: .success)
//            self.view.endEditing(true)
//            }
//        }
//        else if areaSegmentCircleR.text == "" && areaSegmentCircleAlpha.text != "" {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введить значение R", style: .warning)
//            self.view.endEditing(true)
//        } else if areaSegmentCircleR.text != "" && areaSegmentCircleAlpha.text == "" {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение АЛЬФА", style: .warning)
//            self.view.endEditing(true)
//        }else if areaSegmentCircleR.text == "" && areaSegmentCircleAlpha.text == "" {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Ввидеть значения", style: .error)
//            self.view.endEditing(true)
//        }
  
    }
    
    
    

}//Закрытие UIViewController
