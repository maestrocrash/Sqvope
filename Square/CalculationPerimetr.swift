
//
//  CalculationPerimetr.swift
//  Square
//
//  Created by  ShMichail on 01.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class CalculationPerimetr: UIViewController {
    
    
    @IBOutlet weak var b1: UIButton!
  
     var songInfo: tableElements!
    
    override func viewWillAppear(_ animated: Bool) {
        
       
        super.viewWillAppear(false)
        
        //Color tabBar
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0x007AFF)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        SweetAlert().view.endEditing(true)
        
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //==================================//
    
    // Периметр
    
    //Расчет периметра прямоугольник
    @IBOutlet weak var PerimetrRectangleA: UITextField! // Ввод стороны А
    @IBOutlet weak var PerimetrRactangleB: UITextField! // Ввод стороны B
    
  
    
    @IBAction func ButtonPerimetrRactangle(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: PerimetrRectangleA, textFieldTwo: PerimetrRactangleB, nameTextOne: "a", nameTextTwo: "b", formuls: 1)
        
//        if PerimetrRectangleA.text != "" && PerimetrRactangleB.text != ""{
//             let newStringA = PerimetrRectangleA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringB = PerimetrRactangleB.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let arec:Double = (newStringA as NSString).doubleValue //Задание переменной А
//            let brec:Double = (newStringB as NSString).doubleValue //Задание переменной B
//            let perrec = 2 * (arec + brec) // Расчет периметра
//            let perenter = "Периметр прямоугольника равен \n \n P = 2 · (a + b ) \n \n  P = 2 · (\(round(arec*1000)/1000) + \(round(brec*1000)/1000)) = \(round(perrec * 1000) / 1000)" //Присваивание переменной значения вывода
//
//
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(perenter)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else  if PerimetrRectangleA.text != "" && PerimetrRactangleB.text == "" {
//
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//            self.view.endEditing(true)
//                            }
//            else if PerimetrRectangleA.text == "" && PerimetrRactangleB.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style:AlertStyle.warning)
//                    self.view.endEditing(true)
//        }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
    
    @IBAction func info(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Прямоугольником называется параллелограмм с прямыми углами. Периметр прямоугольника равен удвоенной сумме 2-х его сторон. \n P = 2 · (a + b) ", style: AlertStyle.success)
        self.view.endEditing(true)
    }

    // Окончание расчет прямоугольника
    
    //================================//
    
    //Расчет периметра параллелограмма
    
    
    @IBOutlet weak var PerimetrParallelogramaA: UITextField!
    @IBOutlet weak var PerimetrParallelogramaB: UITextField!
    @IBAction func ButtonPerimetrParallelogram(_ sender: UIButton) {
        
      allFormulsTwoValue(textFieldOne: PerimetrParallelogramaA, textFieldTwo: PerimetrParallelogramaB, nameTextOne: "a", nameTextTwo: "b", formuls: 2)
        
//
//        if PerimetrParallelogramaA.text != "" && PerimetrParallelogramaB.text != ""
//        {
//            let newStringA = PerimetrParallelogramaA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringB = PerimetrParallelogramaB.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let perpara: Double = (newStringA as NSString).doubleValue
//            let perparb:Double = (newStringB as NSString).doubleValue
//            let perpar = 2 * ( perpara + perparb)
//            let EnterPerPar = "P = 2 · (a + b) \n \n P = 2 · (\(round(perpara*1000)/1000) + \(round(perparb*1000)/1000)) = \(round(perpar * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен",subTitle: "Периметр параллелограма равен \n \n \(EnterPerPar)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if PerimetrParallelogramaA.text != "" && PerimetrParallelogramaB.text == ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введеите значение b", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//        else if PerimetrParallelogramaA.text == "" && PerimetrParallelogramaB.text != ""
//
//            {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: " Ввидите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
    @IBAction func info1(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Параллелограмм это четырехугольник, противоположные стороны которого попарно параллельны. Противоположные стороны параллелограмма равны. Периметр параллелограмма равен удвоенной сумме 2-х его сторон или: \n P = 2 · (a + b)", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    

    
    //Окончание расчета периметра параллелограма
    
    //============================//
    
    //Начало расчет треугольника
    
    @IBOutlet weak var PerimetrTriangleA: UITextField!
    @IBOutlet weak var PerimetrTriangleB: UITextField!
    @IBOutlet weak var PerimetrTriangelC: UITextField!
    @IBAction func PerimetrTriangleButton(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: PerimetrTriangleA, textFieldTwo: PerimetrTriangleB, textFieldThree: PerimetrTriangelC, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", formuls: 1)
        
//        if PerimetrTriangleA.text != "" && PerimetrTriangleB.text != "" && PerimetrTriangelC.text != ""
//        {

            
//
//            let newStringA = PerimetrTriangleA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringB = PerimetrTriangleB.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringC = PerimetrTriangelC.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let PerTriA:Double = (newStringA as NSString).doubleValue
//            let PerTriB:Double = (newStringB as NSString).doubleValue
//            let PerTriC:Double = (newStringC as NSString).doubleValue
//            let PerTri = PerTriA + PerTriB + PerTriC
//
//            let OT1 = round(PerTriA * 1000)/1000
//            let OT2 = round(PerTriB*1000)/1000
//            let OT3 = round(PerTriC*1000)/1000
//            let OT4 = round(PerTri * 1000) / 1000
//
//            let OutTri = "P = a + b + c \n \n P = \(OT1) + \(OT2) + \(OT3) = \(OT4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Периметр треугольника равен \n \n  \(OutTri)" , style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if PerimetrTriangleA.text == "" && PerimetrTriangleB.text != "" && PerimetrTriangelC.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//            self.view.endEditing(true)
//
//        }
//        else if PerimetrTriangleA.text != "" && PerimetrTriangleB.text == "" && PerimetrTriangelC.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else  if PerimetrTriangleA.text != "" && PerimetrTriangleB.text != "" && PerimetrTriangelC.text == ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning )
//            self.view.endEditing(true)
//        }
//        else
//        {
//             SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
        }
    //Закрытие кнопки
    
    @IBAction func info2(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Треугольник это многоугольник с тремя сторонами. Стороны треугольника обозначаются малыми буквами, соответствующими обозначению противоположных вершин. Периметр треугольника равен сумме длин его сторон: \n P = a + b + c", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
    //Окончание расчет периметра треугольника
    
    
    //===========================//
    
    //Начало расчета перимитера квадрата
    
    @IBOutlet weak var PerimetrKbadratA: UITextField!
    @IBAction func ButtonPerimetrKvadrat(_ sender: UIButton) {
        
        allFormulsOneValue(textField: PerimetrKbadratA, nameText: "a", formuls: 15)
//
//
//
//
//        if PerimetrKbadratA.text != "" {
//
//            let newStringA = PerimetrKbadratA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let PerKvaA:Double = (newStringA as NSString).doubleValue
//            let PerKva = 4 * PerKvaA
//            let OtpKvaResult = "Периметр квадрата равен \n \n P = 4 · a \n \n P = 4 · \(round(PerKvaA*1000)/1000) = \(round(PerKva * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OtpKvaResult)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }else
//        {
//            SweetAlert().showAlert(title: "Ошибка" , subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
        
    }
    @IBAction func info3(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Квадратом называется параллелограмм с прямыми углами и равными сторонами. Квадрат есть частный вид прямоугольника, а также частный вид ромба. Периметр квадрата равен сумме 4-х длин его сторон или : \n P = 4 · a", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета периметра квадрата
    
    //================================//
    
    //Начало расчета периметра трапеции
    
    @IBOutlet weak var PerimetrKeystoneA: UITextField!
    @IBOutlet weak var PerimetrKeystoneB: UITextField!
    @IBOutlet weak var PerimetrKeystoneC: UITextField!
    @IBOutlet weak var PerimetrKeystoneD: UITextField!
    @IBAction func ButtonResultKeystone(_ sender: UIButton) {
        
        allFormulsFourVaribles(textFieldOne: PerimetrKeystoneA, textFieldTwo: PerimetrKeystoneB, textFieldThree: PerimetrKeystoneC, textFieldFour: PerimetrKeystoneD, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", nameTextFour: "d", formuls: 1)
        
//        if PerimetrKeystoneA.text != "" && PerimetrKeystoneB.text != "" && PerimetrKeystoneC.text != "" && PerimetrKeystoneD.text != "" {
//
//            let newStringA = PerimetrKeystoneA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringB = PerimetrKeystoneB.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringC = PerimetrKeystoneC.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringD = PerimetrKeystoneD.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let PerKeyA: Double = (newStringA as NSString).doubleValue
//            let PerKeyB:Double = (newStringB as NSString).doubleValue
//            let PerKeyC:Double = (newStringC as NSString).doubleValue
//            let PerKeyD:Double = (newStringD as NSString).doubleValue
//            let PerKey = PerKeyA + PerKeyB + PerKeyC + PerKeyD
//
//            let OTK1 = round(PerKeyA*1000)/1000
//            let OTK2 = round(PerKeyB*1000)/1000
//            let OTK3 = round(PerKeyC*1000)/1000
//            let OTK4 = round(PerKeyD*1000)/1000
//            let OTK5 = round(PerKey * 1000) / 1000
//
//            let OutPerKey = "Периметр трапеции равен \n \n P = a + b + c + d \n \n P = \(OTK1) + \(OTK2) + \(OTK3) + \(OTK4) = \(OTK5)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutPerKey)" , style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if PerimetrKeystoneA.text == "" && PerimetrKeystoneB.text != "" && PerimetrKeystoneC.text != "" && PerimetrKeystoneD.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else  if PerimetrKeystoneA.text != "" && PerimetrKeystoneB.text == "" && PerimetrKeystoneC.text != "" && PerimetrKeystoneD.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else if PerimetrKeystoneA.text != "" && PerimetrKeystoneB.text != "" && PerimetrKeystoneC.text == "" && PerimetrKeystoneD.text != ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                    else if PerimetrKeystoneA.text != "" && PerimetrKeystoneB.text != "" && PerimetrKeystoneC.text != "" && PerimetrKeystoneD.text == ""
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
    @IBAction func info4(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Трапецией называется четырехугольник, две противоположные стороны которого параллельны. Параллелограмм считается частным видом трапеции. Стороны трапеции не равны. Периметр трапеции равен сумме 4-х её сторон или: \n P = a + b + c + d", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    // Окончание расчета периметра Трапеции
    
    //========================//
    
    //Начало расчета периметра ромба
    
    
    @IBOutlet weak var PerimetrShapeA: UITextField!
    @IBAction func ButtonShapePerimetr(_ sender: UIButton) {
        
        allFormulsOneValue(textField: PerimetrShapeA, nameText: "a", formuls: 16)
//
//        if PerimetrShapeA.text != ""
//        {
//            let newStringA = PerimetrShapeA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let PerShaA:Double = (newStringA as NSString).doubleValue
//            let PerSha = 4 * PerShaA
//            let OutPerSha = "Периметр ромба равен \n \n P = 4 · a \n \n  P = 4 · \(round(PerShaA*1000)/1000) = \(round(PerSha * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: " \(OutPerSha)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        } else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    // Окончание расчет периметра ромба
    
    //Окончание расчет периметра фигур

    @IBAction func info5(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Ромбом называется параллелограмм с равными сторонами. Квадрат есть частный вид ромба. Периметр ромба равен сумме 4-х длин его сторон или: \n P = 4 · a", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    
    
    //Расчет периметра круга
    @IBOutlet weak var perimetr_krug: UITextField!
    @IBAction func perimetr_krug(_ sender: UIButton) {
        
        allFormulsOneValue(textField: perimetr_krug, nameText: "r", formuls: 17)
        
        
        
//        if perimetr_krug.text != "" {
//            let r = perimetr_krug.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let r1:Double = (r as NSString).doubleValue
//            let perimetr = 2 * Double.pi * r1
//            let outPerimetrKruga = " \n \n P = π · r \n \n P = π · \(round(r1*1000)/1000) = \(round(perimetr * 1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: (outPerimetrKruga), style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//        }
    }
    
    @IBAction func infoPerimetrKrug(_ sender: UIButton) {
          SweetAlert().showAlert(title: "Информация", subTitle: "Окружность есть геометрическое место точек плоскости, равноудаленных от одной ее точки (центра). \n Дуга — это часть окружности. \n Секущая — это прямая проходящая через две точки окружности. \n Хорда — это отрезок секущей, лежащий внутри окружности. С приближением к центру хорда увеличивается. \n Круг есть часть плоскости, лежащая внутри окружности. \n Касательная — это прямая пересекающаяся окружность только в одной точке. Касательная это выродившаяся секущая. \n Отрезок, соединяющий две точки окружности и проходящий через ее центр, называется диаметром. Диаметр состоит из двух радиусов, лежащих на одной прямой. \n Периметр круга находится через радиус и формула имеет вид: \n P = π · r", style: AlertStyle.success)
        
    }

    //Окончание расчета круга
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.hidesBarsOnSwipe = true
        b1.layer.cornerRadius = 5.0;
        
    }
   }


