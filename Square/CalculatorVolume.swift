
//
//  CalculatorVolume.swift
//  Square
//
//  Created by  ShMichail on 02.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit


class CalculatorVolume: UIViewController {
    
    
    
    @IBOutlet weak var b5: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(false)
        tabBarController?.tabBar.barTintColor = UIColorFromRGB(0x4CD964)
        self.tabBarController?.tabBar.tintColor = UIColor.white
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        b5.layer.cornerRadius = 5
        self.navigationController?.hidesBarsOnSwipe = true
        /*
        if (objc_getClass("UIAlertController") == nil) {
            // iOS 7
        } else {
            if #available(iOS 8.0, *) {
                self.navigationController?.hidesBarsOnSwipe = true
            } else {
                // Fallback on earlier versions
            }*/
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        SweetAlert().view.endEditing(true)
    }
    
    
    //=====================================================//
    
    //Начало расчет объема фигур
    
    // Расчет объема куба
    
    @IBOutlet weak var EnterVolumeCubeA: UITextField!
    @IBAction func ButtonVolumeCube(_ sender: UIButton) {
        
        
    allFormulsOneValue(textField: EnterVolumeCubeA, nameText: "a", formuls: 12)
        
        
//        if EnterVolumeCubeA.text != "" {
//
//            let newStringA = EnterVolumeCubeA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolCubA:Double = (newStringA as NSString).doubleValue
//            let VolCub = pow(VolCubA, 3)
//            let OutVolCub = "Объем куба равен \n \n V = a³ \n \n V = \(round(VolCubA*1000)/1000)³ = \(round(VolCub * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutVolCub)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
    }
    
    
    @IBAction func info(_ sender: UIButton) {
        SweetAlert().showAlert(title: "Информация", subTitle: "Прямоугольный параллелепипед, все грани которого - квадраты, называется кубом. Все ребра куба равны. Объем куба равен кубу его ребра: \n V = a³", style: AlertStyle.success)
        self.view.endEditing(true)
    }
    //Окончание расчета объема куба
    
    //=========================//
    
    
    //Начало расчета объема паралепипеда
    
    @IBOutlet weak var EnterVolumeBoxA: UITextField!
    @IBOutlet weak var EnterVolumeBoxB: UITextField!
    @IBOutlet weak var EnterVolumeBoxC: UITextField!
    @IBAction func ButtonVolumeBox(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterVolumeBoxA, textFieldTwo: EnterVolumeBoxB, textFieldThree: EnterVolumeBoxC, nameTextOne: "a", nameTextTwo: "b", nameTextThree: "c", formuls: 7)
//
//        if EnterVolumeBoxA.text != "" && EnterVolumeBoxB.text != "" && EnterVolumeBoxC.text != "" {
//
//            let newStringA = EnterVolumeBoxA.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringB = EnterVolumeBoxB.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringC = EnterVolumeBoxC.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//
//            let VolBoxA:Double = (newStringA as NSString).doubleValue
//            let VolBoxB:Double = (newStringB as NSString).doubleValue
//            let VolBoxC:Double = (newStringC as NSString).doubleValue
//            let VolBox = VolBoxA * VolBoxB * VolBoxC
//
//            let OVB1 = round(VolBoxA*1000)/1000
//            let OVB2 = round(VolBoxB*1000)/1000
//            let OVB3 = round(VolBoxC*1000)/1000
//            let OVB4 = round(VolBox * 1000) / 1000
//
//
//            let OutVolBox = "Объем паралепипеда равен \n \n V = a · b · c \n \n V = \(OVB1) · \(OVB2) · \(OVB3) = \(OVB4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutVolBox)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterVolumeBoxA.text == "" && EnterVolumeBoxB.text != "" && EnterVolumeBoxC.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a" , style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumeBoxA.text != "" && EnterVolumeBoxB.text == "" && EnterVolumeBoxC.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение b" , style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumeBoxA.text != "" && EnterVolumeBoxB.text != "" && EnterVolumeBoxC.text == ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение c" , style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//            else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения" , style: AlertStyle.error)
//                }
            }
    
    
    @IBAction func info1(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: " Параллелепипедом называется призма, основание которой параллелограмм. Параллелепипед имеет шесть граней, и все они — параллелограммы. Параллелепипед, четыре боковые грани которого — прямоугольники, называется прямым. Прямой параллелепипед у которого все шесть граней прямоугольники, называется прямоугольным.\n Объем прямоугольного параллелепипеда равен произведению площади основания на высоту: \n V = S · H =  a · b · c", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета параллепипеда
    
    //================//
    
    //Начало расчета объмов пирамиды
    
    //Начало расчета объема пирамиды
    
    @IBOutlet weak var EnterVolumePyramidH: UITextField!
    @IBOutlet weak var EnterVolumePyramidS: UITextField!
    @IBAction func ButtonVolumePyramid(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterVolumePyramidH, textFieldTwo: EnterVolumePyramidS, nameTextOne: "h", nameTextTwo: "S", formuls: 3)
//
//        if EnterVolumePyramidH.text != "" && EnterVolumePyramidS.text != ""
//        {
//             let newStringH = EnterVolumePyramidH.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newStringS = EnterVolumePyramidS.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyrH:Double = (newStringH as NSString).doubleValue
//            let VolPyrS:Double = (newStringS as NSString).doubleValue
//            let VolPyr = 1/3 * (VolPyrH * VolPyrS)
//            let OutVolPyr = "Объем пирамиды равен \n \n  V = ⅓ · h · S \n \n V = ⅓ · \(round(VolPyrS*1000)/1000) · \(round(VolPyrH*1000)/1000) = \(round(VolPyr * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutVolPyr)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumePyramidH.text == "" && EnterVolumePyramidS.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h" , style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumePyramidH.text != "" && EnterVolumePyramidS.text == ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение S" , style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения" , style: AlertStyle.error)
//                self.view.endEditing(true)
//            }
        }
    
    @IBAction func info3(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Пирамида — это многогранник, у которого одна грань — основание пирамиды — произвольный многоугольник, а остальные — боковые грани — треугольники с общей вершиной, называемой вершиной пирамиды. \n Объем пирамиды равен одной трети произведения площади основания S  на высоту h: \n V = ⅓ · h · S", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    // Окончание расчета объема пирамиды
    
    
    //================//
    
    //Начало расчета объема правильной пирамиды
    
    
    @IBOutlet weak var EnterVolumePyramidH2: UITextField!
    @IBOutlet weak var EnterVolumePyramid2n: UITextField!
    @IBOutlet weak var EnterVolumePyramid2a: UITextField!
    
    @IBAction func ButtonVolumePyramid2(_ sender: UIButton) {

        
        allFormulsThreeVariables(textFieldOne: EnterVolumePyramidH2, textFieldTwo: EnterVolumePyramid2n, textFieldThree: EnterVolumePyramid2a, nameTextOne: "h", nameTextTwo: "n", nameTextThree: "a", formuls: 8)
        
      //  let n:Double = (EnterVolumePyramid2n.text as! NSString).doubleValue

//        if EnterVolumePyramid2a.text != "" && EnterVolumePyramid2n.text != "" && EnterVolumePyramidH2.text != "" && (EnterVolumePyramid2n.text! as NSString).doubleValue > 2{
//
//             let newStringH2 = EnterVolumePyramidH2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString2n = EnterVolumePyramid2n.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//             let newString2a = EnterVolumePyramid2a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyr2h:Double = (newStringH2 as NSString).doubleValue
//            let VolPyr2n:Double = (newString2n as NSString).doubleValue
//            let VolPyr2a:Double = (newString2a as NSString).doubleValue
//
//            let VP = (VolPyr2n * Double.pi)/180
//
//            let VolPyr2 = (VolPyr2h * VolPyr2n * pow(VolPyr2a, 2))/( 12 * (tan(180 / VP )))
//
//            let OP21 = round(VolPyr2h*1000)/1000
//            let OP22 = round(VolPyr2n*1000)/1000
//            let OP23 = round(VolPyr2a*1000)/1000
//            let OP24 = round(VolPyr2n*1000)/1000
//            let OP25 = round(VolPyr2) * 1000 / 1000
//
//
//
//
//            let OutPyr2 = "Объем правильной пирамиды равен \n \n V = (h · n · a²)/(12 · tg (180 / n )) \n \n V = (\(OP21) · \(OP22) · \(OP23)²)/(12 · tg(180/ \(OP24))) = \(OP25)"
//            SweetAlert().showAlert( title: "Расчет окончен", subTitle: "\(OutPyr2)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//    else if EnterVolumePyramid2a.text == "" && EnterVolumePyramid2n.text != "" && EnterVolumePyramidH2.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//
//        }
//    else if EnterVolumePyramid2a.text != "" && EnterVolumePyramid2n.text == "" && EnterVolumePyramidH2.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение n" , style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//    else if EnterVolumePyramid2a.text != "" && EnterVolumePyramid2n.text != "" && EnterVolumePyramidH2.text == ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//    else if Int(EnterVolumePyramid2n.text!)! <= 2
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Минимальное значение n = 3", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
//
//    else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения" , style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
        
            }
    
    @IBAction func InfoButton(_ sender: UIButton) {
        
        
        SweetAlert().showAlert(title: "Информация", subTitle:"Правильная пирамида — это многогранник, у которого одна грань — основание пирамиды — правильный многоугольник, а остальные — боковые грани — равные треугольники с общей вершиной. Высота опускается в центр основания из вершины. \n Объем правильной пирамиды находится по формуле: \n V = (h · n · a²)/(12 · tg (180 / n )) \n h - высота пирамиды; \n a - сторона основания пирамиды; \n n - количество сторон многоугольника в основании.", style: AlertStyle.success)
            self.view.endEditing(true)
    }
    
    //Окончание расчета правильной пирамиды
    
    //=================//
    
    //Начало расчета объема правильной треугольной пирамиды
    
    @IBOutlet weak var EnterVolumePyramid3h: UITextField!
    @IBOutlet weak var EnterVolumePyramid3a: UITextField!
    @IBAction func ButtonVolumePyramid3(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterVolumePyramid3h, textFieldTwo: EnterVolumePyramid3a, nameTextOne: "h", nameTextTwo: "a", formuls: 4)
        
        
//        if EnterVolumePyramid3h.text != "" && EnterVolumePyramid3a.text != ""
//        {
//            let newString3h = EnterVolumePyramid3h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString3a = EnterVolumePyramid3a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyr3h:Double = (newString3h as NSString).doubleValue
//            let VolPyr3a:Double = (newString3a as NSString).doubleValue
//            let VolPyr3 = (VolPyr3h * pow(VolPyr3a, 2)) / (4 * sqrt(3))
//            let OutPyr3 = "Объем правильной треугольной пирамиды равен \n \n V = (h · a²) / 4 · √3 \n \n V = ((\(round(VolPyr3h*1000)/1000) · \(round(VolPyr3a*1000)/1000)²) / 4 · √3 ) =  \(round(VolPyr3 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutPyr3)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterVolumePyramid3h.text == "" && EnterVolumePyramid3a.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumePyramid3h.text != "" && EnterVolumePyramid3a.text == "" {
//
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)        }
        
        }
    
    @IBAction func info2(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Правильная треугольная пирамида — это многогранник, у которого одна грань — основание пирамиды — правильный треугольник, а остальные — боковые грани — равные треугольники с общей вершиной. Высота опускается в центр основания из вершины.Объем правильной треугольной пирамиды находится по формуле: \n V = (h · a²) / 4 · √3", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчет объема правильной треугольной пирамиды
    
    //==================//
    
    //Начало расчета правильной четырехугольной пирамиды
    
    @IBOutlet weak var EnterVolumePyramid4h: UITextField!
    @IBOutlet weak var EnterVolumePyramid4a: UITextField!
    @IBAction func ButtonVolumePyramid4(_ sender: UIButton) {
        
        allFormulsTwoValue(textFieldOne: EnterVolumePyramid4h, textFieldTwo: EnterVolumePyramid4a, nameTextOne: "h", nameTextTwo: "a", formuls: 5)
        
        
//        if EnterVolumePyramid4h.text != "" && EnterVolumePyramid4a.text != ""
//        {
//
//            let newString4h = EnterVolumePyramid4h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString4a = EnterVolumePyramid4a.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyr4h:Double = (newString4h as NSString).doubleValue
//            let VolPyr4a:Double = (newString4a as NSString).doubleValue
//            let VolPyr4 = (1/3)*(VolPyr4h * pow(VolPyr4a, 2))
//            let OutPyr4 = "Объем правильной четырехугольной пирамиды равен \n \n V = ⅓ · h · a² \n \n V = ⅓ · \(VolPyr4h) · \(VolPyr4a)² = \(round(VolPyr4 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(OutPyr4)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumePyramid4h.text == "" && EnterVolumePyramid4a.text != ""
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumePyramid4h.text != "" && EnterVolumePyramid4a.text == "" {
//
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение a", style: AlertStyle.warning)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
        
    }
    
    
    @IBAction func info4(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Правильная четырехугольная пирамида — это многогранник, у которого одна грань — основание пирамиды — квадрат, а остальные — боковые грани — равные треугольники с общей вершиной. Высота опускается в центр пересечения диагоналей квадрата основания из вершины.Объем правильной четырехугольной пирамиды находится по формуле: \n V = ⅓ · h · a²", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета правильной четырехугольной пирамиды
    
    //=====================//
    
    //Начало расчета объема тетраэдера
    
    @IBOutlet weak var EnterVolumePyramid5: UITextField!
    @IBAction func ButtonVolymePyramid5(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterVolumePyramid5, nameText: "a", formuls: 13)
        
        
//        if EnterVolumePyramid5.text != "" {
//
//            let newString5 = EnterVolumePyramid5.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyr5a:Double = (newString5 as NSString).doubleValue
//            let VolPyr5 = (pow( VolPyr5a, 3) * sqrt(2)) / (12)
//            let VolPyr55 = "Объем тетраэдера равен \n \n V = (√2 / 12) · a³ \n \n V = (√2 / 12) · \(round(VolPyr5a*1000)/1000)³ = \(round( VolPyr5 * 1000) / 1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(VolPyr55)", style: AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//        }
//
    }
    
    @IBAction func info5(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Объем тетраэдра расчитывается по классической формуле объема пирамиды. В нее необходимо подставить высоту тетраэдра и площадь правильного (равностороннего) треугольника.\n Объем тетраэдра — равен дроби в числителе которой корень квадратный из двух в знаменателе двенадцать, помноженной на куб длины ребра тетраэдра: \n V = (√2 / 12) · a³", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
    //Окончание расчета тетраэдера
    
    //=========================//
    
    //Начало расчета усеченной пирамиды
    @IBOutlet weak var EnterVolumePyramid6h: UITextField!
    @IBOutlet weak var EnterVolumePyramid6S1: UITextField! //Площадь нижнего основания
    @IBOutlet weak var EnterVolumePyramid6S2: UITextField! // Площадь верхнего основания
    @IBAction func ButtonVolumePyramid6(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterVolumePyramid6h, textFieldTwo: EnterVolumePyramid6S1, textFieldThree: EnterVolumePyramid6S2, nameTextOne: "h", nameTextTwo: "S₁", nameTextThree: "S₂", formuls: 9)
        
//        if EnterVolumePyramid6h.text != "" && EnterVolumePyramid6S1.text != "" && EnterVolumePyramid6S2.text != ""
//        {
//            let newString6h = EnterVolumePyramid6h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString6S1 = EnterVolumePyramid6S1.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString6s2 = EnterVolumePyramid6S2.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolPyr6h:Double = (newString6h as NSString ).doubleValue
//            let VolPyr6S1:Double = (newString6S1 as NSString).doubleValue
//            let VolPyr6S2:Double = (newString6s2 as NSString).doubleValue
//            let VolPyr6 = (1/3) * VolPyr6h * (VolPyr6S1 * sqrt(VolPyr6S1 * VolPyr6S2) * VolPyr6S2)
//
//            let VP661 = round(VolPyr6h*1000)/1000
//            let VP662 = round(VolPyr6S1*1000)/1000
//            let VP663 = round(VolPyr6S1*1000)/1000
//            let VP664 = round(VolPyr6S2*1000)/1000
//            let VP665 = round(VolPyr6S2*1000)/1000
//            let VP667 = round(VolPyr6 * 1000) / 1000
//
//            let VolPyr66 = "Объем усеченной пирамиды равен \n \n  V = ⅓ · h · (S₁ + √S₁S₂ + S₂) \n \n  V = ⅓ · \(VP661) · (\(VP662) + √\(VP663) · \(VP664) + \(VP665)) = \(VP667)  "
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(VolPyr66)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//else if EnterVolumePyramid6h.text == "" && EnterVolumePyramid6S1.text != "" && EnterVolumePyramid6S2.text != ""
//        {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//        }
//else if EnterVolumePyramid6h.text != "" && EnterVolumePyramid6S1.text == "" && EnterVolumePyramid6S2.text != ""
//        {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение S₁", style: AlertStyle.warning)
//                self.view.endEditing(true)
//        }
//else if EnterVolumePyramid6h.text != "" && EnterVolumePyramid6S1.text != "" && EnterVolumePyramid6S2.text == ""
//        {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение S₂", style: AlertStyle.warning)
//                self.view.endEditing(true)
//        }
//            else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//
//                }
    }
    
    
    @IBAction func info6(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Пирамида — это многогранник, у которого одна грань — основание пирамиды — произвольный многоугольник, а остальные — боковые грани — треугольники с общей вершиной, называемой вершиной пирамиды.Сечение параллельное основанию пирамиды делит пирамиду на две части. Часть пирамиды между ее основанием и этим сечением — это усеченная пирамида. \n Объем усеченной пирамиды равен одной трети произведения высоты h на сумму площадей верхнего основания S₁, нижнего основания усеченной пирамиды S₂ и средней пропорциональной между ними: \n V = ⅓ · h · (S₁ + √S₁S₂ + S₂)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета усеченной пирамиды
    
    //Окончание расчета объема пирамид
    
    //=================//
    
    //Начало расчета объема конуса
    
    //Расчет конуса
    
    @IBOutlet weak var EnterVolumeConeR: UITextField!
    @IBOutlet weak var EnterVolumeConeh: UITextField!
    @IBAction func ButtonVolumeCone(_ sender: UIButton) {
        
        
        allFormulsTwoValue(textFieldOne: EnterVolumeConeR, textFieldTwo: EnterVolumeConeh, nameTextOne: "R", nameTextTwo: "h", formuls: 6)
        
//        if EnterVolumeConeh.text != "" && EnterVolumeConeR.text != ""
//        {
//            let newStringR = EnterVolumeConeR.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringh = EnterVolumeConeh.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolConR:Double = (newStringR as NSString).doubleValue
//            let VolConh:Double = (newStringh as NSString).doubleValue
//            let VolCon = (1/3)*(Double.pi * pow(VolConR, 2) * VolConh)
//
//            let VC1 = round(Double.pi*1000)/1000
//            let VC2 = round(VolConR*1000)/1000
//            let VC3 = round(VolConh*1000)/1000
//            let VC4 = round(VolCon * 1000) / 1000
//
//
//            let VolCOn1 = "\n \n V = ⅓ · (π · R² · h)\n \n V = ⅓ · \(VC1) · \(VC2)² · \(VC3) = \(VC4)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Объем конуса равен\(VolCOn1)", style : AlertStyle.success)
//            self.view.endEditing(true)
//
//        }
//        else if EnterVolumeConeR.text == "" && EnterVolumeConeh.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение R", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//        else if EnterVolumeConeR.text != "" && EnterVolumeConeh.text == ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//
//            }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//
//                }
            }
            
    @IBAction func info8(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Круглый конус может быть получен вращением прямоугольного треугольника вокруг одного из его катетов, поэтому круглый конус называт также конусом вращения. Объем круглого конуса нахоидтся по формуле: \n V = ⅓ · (π · R² · h)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
 
    //Окончание расчета конуса
    
    //======================//
    
    //Начало расчета усеченного конуса
    
    @IBOutlet weak var EnterVolumeCone2h: UITextField!
    @IBOutlet weak var EnterVolumeCone2r: UITextField!
    @IBOutlet weak var EnterVolumeCone2R: UITextField!
    @IBAction func ButtonVolumeCone2(_ sender: UIButton) {
        
        allFormulsThreeVariables(textFieldOne: EnterVolumeCone2h, textFieldTwo: EnterVolumeCone2r, textFieldThree: EnterVolumeCone2R, nameTextOne: "h", nameTextTwo: "r", nameTextThree: "R", formuls: 10)
        
//        
//        if EnterVolumeCone2h.text != "" && EnterVolumeCone2R.text != "" && EnterVolumeCone2r.text != ""
//        {
//            let newString2h = EnterVolumeCone2h.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2r = EnterVolumeCone2r.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newString2R = EnterVolumeCone2R.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            
//            let VolCon2h:Double = (newString2h as NSString).doubleValue
//            let VolCon2r:Double = (newString2r as NSString).doubleValue
//            let VolCon2R:Double = (newString2R as NSString).doubleValue
//            let VolCon2 = (1/3) * Double.pi * VolCon2h * (pow(VolCon2R, 2) + (VolCon2R * VolCon2r) + pow(VolCon2r, 2))
//            let VolCon22 = " Объем усеченного конуса равен \n \n V = ⅓ · π · h · (R² · R·r + r²) \n \n  V = ⅓ · \(round(Double.pi*1000)/1000) · \(VolCon2h) · (\(VolCon2R)² · \(VolCon2R)·\(VolCon2r) + \(VolCon2r)²) = \(round(VolCon2*1000)/1000)"
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "\(VolCon22)", style: AlertStyle.success)
//            self.view.endEditing(true)
//            
//            
//        }
//        else if EnterVolumeCone2h.text == "" && EnterVolumeCone2R.text != "" && EnterVolumeCone2r.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//        else if EnterVolumeCone2h.text != "" && EnterVolumeCone2R.text == "" && EnterVolumeCone2r.text != ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение R", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//        else if EnterVolumeCone2h.text != "" && EnterVolumeCone2R.text != "" && EnterVolumeCone2r.text == ""
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                        self.view.endEditing(true)
//                    }
//                else
//                    {
//                        SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                        self.view.endEditing(true)
//                    }
                }

    @IBAction func info9(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Усеченный конус получится, если в конусе провести сечение, параллельное основанию. Тело ограниченное этим сечением, основанием и боковой поверхностью конуса называется усеченным конусом. \n Вычисляется по формуле: \n V = ⅓ · π · h · (R² · R·r + r²)", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчет объема усеченного конуса
    
    //=====================//
    
    //Начало расчета объема цилиндра
    
    @IBOutlet weak var EnterVolumeCylinderr: UITextField!
    @IBOutlet weak var EnterVolumeCylindrh: UITextField!
    @IBAction func ButtonVolumeCylinder(_ sender: UIButton) {
        
        
        allFormulsTwoValue(textFieldOne: EnterVolumeCylinderr, textFieldTwo: EnterVolumeCylindrh, nameTextOne: "r", nameTextTwo: "h", formuls: 7)
        
//        if EnterVolumeCylinderr.text != "" && EnterVolumeCylindrh.text != ""
//        {
//            let newStringr = EnterVolumeCylinderr.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//            let newStringh = EnterVolumeCylindrh.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//
//            let VolCylr:Double = (newStringr as NSString).doubleValue
//            let VolCylh:Double = (newStringh as NSString).doubleValue
//            let VolCyl = Double.pi * pow(VolCylr, 2) * VolCylh
//
//            let VC11 = round(Double.pi*1000)/1000
//            let VC12 = round(VolCylr*1000)/1000
//            let VC13 = round(VolCylh*1000)/1000
//            let VC14 = round(VolCyl * 1000) / 1000
//
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: " Объем цилиндра равен \n \n V = π · r² · h \n \n V = \(VC11) · \(VC12)² · \(VC13) = \(VC14)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else if EnterVolumeCylinderr.text == "" && EnterVolumeCylindrh.text != ""
//            {
//                SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение r", style: AlertStyle.warning)
//                self.view.endEditing(true)
//            }
//            else if EnterVolumeCylinderr.text != "" && EnterVolumeCylindrh.text == ""
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение h", style: AlertStyle.warning)
//                    self.view.endEditing(true)
//                }
//                else
//                {
//                    SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значения", style: AlertStyle.error)
//                    self.view.endEditing(true)
//                }
            }
 
    @IBAction func info10(_ sender: UIButton) {
        
        SweetAlert().showAlert(title: "Информация", subTitle: "Цилиндрической поверхностью называется поверхность, образуемая прямой, сохраняющей одно и тоже направление и пересекающей направляющую линию. Цилиндр — круговой если в основании его лежит круг. \n Объем всякого цилиндра находится по формуле: \n V = π · r² · h", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    //Окончание расчета объема цилиндра
    
    //===============//
    
    //Начало расчета объема шара
    
    @IBOutlet weak var EnterVolumeBall: UITextField!

    @IBAction func ButtonVolumeBall(_ sender: UIButton) {
        
        allFormulsOneValue(textField: EnterVolumeBall, nameText: "a", formuls: 14)
        
//        if EnterVolumeBall.text != ""{
//
//               let newString = EnterVolumeBall.text!.replacingOccurrences(of: ",", with: ".", options: NSString.CompareOptions.literal, range: nil)
//
//            let VolBalr:Double = (newString as NSString).doubleValue
//            let VolBal = (4/3) * Double.pi * (pow(VolBalr, 3))
//            SweetAlert().showAlert(title: "Расчет окончен", subTitle: "Объем шара равен \n \n  V = 4/3 · (π · a³) \n \n V = \(round(Double.pi*1000)/1000) · \(round(VolBalr*1000)/1000)³ = \(round(VolBal * 1000) / 1000)", style: AlertStyle.success)
//            self.view.endEditing(true)
//        }
//        else
//        {
//            SweetAlert().showAlert(title: "Ошибка", subTitle: "Введите значение", style: AlertStyle.error)
//            self.view.endEditing(true)
//
//        }
    }
    @IBAction func ButtomVolumeInfoBall(_ sender: UIButton) {
        
    
        SweetAlert().showAlert(title: "Инфо", subTitle: "Шар или сфера. Шаровой, или сферической поверхностью (иногда просто сферой) называется геометрическое место точек пространства, равноудаленных от одной точки - центра шара. \n Объем шара находится по формуле: \n V = 4/3 · (π · a³).", style: AlertStyle.success)
        self.view.endEditing(true)
        
    }
    
    //Окончание расчета объема шара
    
    //========// 
    
    //Окончание расчет объема
    


}
