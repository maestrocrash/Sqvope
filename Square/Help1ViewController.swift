//
//  Help1ViewController.swift
//  Square
//
//  Created by  ShMichail on 11.03.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit
import Foundation
import MessageUI

class Help1ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0xFF9500)
        self.tabBarController?.tabBar.tintColor = UIColor.white
    
    }
    
    @IBOutlet weak var PleaseStar: UIButton!
    @IBOutlet weak var SafariLink: UIButton!
    @IBOutlet weak var HelpEmail: UIButton!
    @IBOutlet weak var VersionLabel: UILabel!
    
    
    
    @IBAction func Desknit(_ sender: UIButton) {
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
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */


}
