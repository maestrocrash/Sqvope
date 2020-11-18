//
//  Help.swift
//  Square
//
//  Created by  ShMichail on 11.03.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit
import Foundation
import MessageUI


import UIKit

private let DeviceList1 = [
    /* iPod 5 */          "iPod5,1": "iPod Touch 5",
    /* iPhone 4 */        "iPhone3,1":  "iPhone 4", "iPhone3,2": "iPhone 4", "iPhone3,3": "iPhone 4",
    /* iPhone 4S */       "iPhone4,1": "iPhone 4S",
    /* iPhone 5 */        "iPhone5,1": "iPhone 5", "iPhone5,2": "iPhone 5",
    /* iPhone 5C */       "iPhone5,3": "iPhone 5C", "iPhone5,4": "iPhone 5C",
    /* iPhone 5S */       "iPhone6,1": "iPhone 5S", "iPhone6,2": "iPhone 5S",
    /* iPhone 6 */        "iPhone7,2": "iPhone 6",
    /* iPhone 6 Plus */   "iPhone7,1": "iPhone 6 Plus",
    /* iPhone 6s */       "iPhone8,1": "iPhone 6s",
    /* iPhone 6s Plus */  "iPhone8,2": "iPhone 6s plus",
    /* iPhone 7*/         "iPhone9,1": "iPhone 7", "iPhone9,3": "iPhone 7",
    /* iPhone 7 plus*/    "iPhone9,2": "iPhone 7 plus", "iPhone9,4": "iPhone 7 plus",
                          
    /* iPad 2 */          "iPad2,1": "iPad 2", "iPad2,2": "iPad 2", "iPad2,3": "iPad 2", "iPad2,4": "iPad 2",
    /* iPad 3 */          "iPad3,1": "iPad 3", "iPad3,2": "iPad 3", "iPad3,3": "iPad 3",
    /* iPad 4 */          "iPad3,4": "iPad 4", "iPad3,5": "iPad 4", "iPad3,6": "iPad 4",
    /* iPad Air */        "iPad4,1": "iPad Air", "iPad4,2": "iPad Air", "iPad4,3": "iPad Air",
    /* iPad Air 2 */      "iPad5,1": "iPad Air 2", "iPad5,3": "iPad Air 2", "iPad5,4": "iPad Air 2",
    /* iPad Mini */       "iPad2,5": "iPad Mini", "iPad2,6": "iPad Mini", "iPad2,7": "iPad Mini",
    /* iPad Mini 2 */     "iPad4,4": "iPad Mini", "iPad4,5": "iPad Mini", "iPad4,6": "iPad Mini",
    /* iPad Mini 3 */     "iPad4,7": "iPad Mini", "iPad4,8": "iPad Mini", "iPad4,9": "iPad Mini",
    /* Simulator */       "x86_64": "Simulator", "i386": "Simulator"
]

public extension UIDevice {
    
    var modelName1: String {
        var systemInfo: utsname = utsname()

        uname(&systemInfo)
        let machine = systemInfo.machine
        let mirror = Mirror(reflecting: machine)
        var identifier = ""
        for child in mirror.children where child.value as? Int8 != 0 {
            identifier.append(String(UnicodeScalar(UInt8(child.value as! Int8))))
        }
        return DeviceList1[identifier] ?? identifier
    }
    
}
    
    



class Help: UIViewController, MFMailComposeViewControllerDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(false)
        //Color NavigationController
        
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0x007AFF)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
    }
    
    
    @IBOutlet weak var PleaseStar: UIButton!
    @IBOutlet weak var SafariLink: UIButton!
    @IBOutlet weak var HelpEmail: UIButton!
    @IBOutlet weak var VersionLabel: UILabel!
    
    
    
    @IBAction func Desknit2(_ sender: UIButton) {
        let url = URL(string: "http://www.livemaster.ru/desknit56")
        UIApplication.shared.canOpenURL(url!)
    }
    
    @IBAction func OpenEdestima(_ sender: UIButton) {
        let url = URL(string: "http://edestima.com")
        UIApplication.shared.canOpenURL(url!)
    }
    
    @IBAction func PleaseStarBtn(_ sender: UIButton) {
        let url = URL(string: "https://itunes.apple.com/us/app/sqvope-rascet-plosadi-perimetra/id977099804?l=ru&ls=1&mt=8")
        UIApplication.shared.canOpenURL(url!)
    }
    
    @IBAction func sendEmail(_ sender: UIButton) {
        let emailTitle = " \(UIApplication.versionBuild()). Устройство: " + UIDevice.current.modelName + " iOS" + UIDevice.current.systemVersion
        let toRecipents = ["developer.shakhvorostov@gmail.com"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setToRecipients(toRecipents)
        
        print(emailTitle)
        
        self.present(mc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PleaseStar.layer.cornerRadius = 5.0
        SafariLink.layer.cornerRadius = 5.0
        HelpEmail.layer.cornerRadius = 5.0
        
        VersionLabel.text = UIApplication.versionBuild()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith result:MFMailComposeResult, error:Error?) {
        
      let alert = UIAlertView()
      // let alert = UIAlertController()
      
//        let alert = UIAlertController.Style.alert
    
        
        /*
        let alertController = UIAlertController(title: "Destructive", message: "Simple alertView demo with Destructive and Ok.", preferredStyle: UIAlertController.Style.alert)
         let DestructiveAction = UIAlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive) { (result : UIAlertAction) -> Void in
         print("Destructive")
         }
         let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (result : UIAlertAction) -> Void in
         print("OK")
         }
         alertController.addAction(DestructiveAction)
         alertController.addAction(okAction)
         self.presentViewController(alertController, animated: true, completion: nil)
 */
        
        let alertController = UIAlertController(title: "Destructive", message: "Simple alertView demo with Destructive and Ok.", preferredStyle: UIAlertController.Style.alert) //Replace UIAlertControllerStyle.Alert by UIAlertControllerStyle.alert
        let DestructiveAction = UIAlertAction(title: "Destructive", style: UIAlertAction.Style.destructive) {
            (result : UIAlertAction) -> Void in
            print("Destructive")
        }
        
        // Replace UIAlertActionStyle.Default by UIAlertActionStyle.default
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            print("OK")
        }

        
        
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Mail cancelled")
            
            alertController.addAction(DestructiveAction)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
           
//            alert.title = "Сообщение отклонено"
//            alert.message = "Мы будем рады Вашему письму."
//            alert.addButton(withTitle: "Хорошо")
//            alert.show()
        case MFMailComposeResult.saved.rawValue:
            print("Mail saved")
            alert.title = "Сообщение сохранено"
            alert.message = "Не забудьте дописать письмо и отправить в нашу службу поддержки."
            alert.addButton(withTitle: "Хорошо")
            alert.show()
        case MFMailComposeResult.sent.rawValue:
            print("Mail sent")
            alert.title = "Сообщение отправлено"
            alert.message = "Спасибо за Ваше письмо, служба поддержки ответит Вам, как можно скорее."
            alert.addButton(withTitle: "Отлично")
            alert.show()
        case MFMailComposeResult.failed.rawValue:
            print("Mail sent failure: \(error!.localizedDescription)")
            alert.title = "Ошибка"
            alert.message = "\(error!.localizedDescription)"
            alert.addButton(withTitle: "Ой")
            alert.show()
        default:
            break
        }
        self.dismiss(animated: true, completion: nil)
    }

    
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
