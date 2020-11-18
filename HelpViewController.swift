//
//  HelpViewController.swift
//
//


import UIKit
import Foundation
import MessageUI

extension UIApplication {
    
    class func appVersion() ->String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    class func appBuild() ->String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }
    
    class func versionBuild() ->String {
        let version = appVersion(), build = appBuild()
        
        return version == build ? "v\(version)" : "v\(version)"
    }
}

private let DeviceList = [
    /* iPod 5 */          "iPod5,1": "iPod Touch 5",
    /* iPhone 4 */        "iPhone3,1":  "iPhone 4", "iPhone3,2": "iPhone 4", "iPhone3,3": "iPhone 4",
    /* iPhone 4S */       "iPhone4,1": "iPhone 4S",
    /* iPhone 5 */        "iPhone5,1": "iPhone 5", "iPhone5,2": "iPhone 5",
    /* iPhone 5C */       "iPhone5,3": "iPhone 5C", "iPhone5,4": "iPhone 5C",
    /* iPhone 5S */       "iPhone6,1": "iPhone 5S", "iPhone6,2": "iPhone 5S",
    /* iPhone 6 */        "iPhone7,2": "iPhone 6",
    /* iPhone 6 Plus */   "iPhone7,1": "iPhone 6 Plus",
    /* iPhone 6s */       "iPhone8,2": "iPhone 6s",
    /* iPhone 6s Plus */  "iPhone8,1": "iPhone 6s Plus",
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
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let machine = systemInfo.machine
        //let mirror = reflect(machine)                // Раскоментить если используете Swift 1.2
        let mirror = Mirror(reflecting: machine)  // Swift 2.0
        var identifier = ""
        
        // Раскоментить, если используете Swift 1.2 - if you use Swift 2.0 comment this loop out.
        //for i in 0..<mirror.count {
        //    if let value = mirror[i].1.value as? Int8 where value != 0 {
        //        identifier.append(UnicodeScalar(UInt8(value)))
        //    }
        // }
        
        // Для использования в Swift 2.0
        for child in mirror.children where child.value as? Int8 != 0 {
            identifier.append(String(UnicodeScalar(UInt8(child.value as! Int8))))
        }
        
        return DeviceList[identifier] ?? identifier
    }
    
}

class HelpViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        tabBarController?.tabBar.barTintColor = UIColorFromRGB(0x4CD964)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
    }
    
    @IBOutlet weak var PleaseStar: UIButton!
    @IBOutlet weak var SafariLink: UIButton!
    @IBOutlet weak var HelpEmail: UIButton!
    @IBOutlet weak var VersionLabel: UILabel!
    
    
    @IBAction func Desknit3(_ sender: UIButton) {
        
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
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Mail cancelled")
            alert.title = "Сообщение отклонено"
            alert.message = "Мы будем рады Вашему письму."
            alert.addButton(withTitle: "Хорошо")
            alert.show()
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
