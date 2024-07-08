//
//  ViewController.swift
//  ioswidgetsdemo
//
//  Created by Dhaval Nakum on 05/07/24.
//

import UIKit

class ViewController: UIViewController {


    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loader.isHidden = true
        
    }
    
    
    
    
    @IBAction func segmentOnChange(_ sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex){
        case 0:
            view.backgroundColor = .green
        case 1:
            view.backgroundColor = .purple
        case 2:
            view.backgroundColor = .cyan
        case 3:
            view.backgroundColor = .magenta
        default:
            view.backgroundColor = .red
        }
        
    }
    
    
    @IBAction func openActionBtn(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: nil, message: "Are you sure want to delete ?", preferredStyle: UIAlertController.Style.actionSheet)
        
        let action1 = UIAlertAction(title: "Yes", style: .destructive, handler:nil)
        let action2 = UIAlertAction(title: "No", style: .default, handler:nil)
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func onTapActionWithTextField(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Enter Password", message: "Please enter password for connect to wifi", preferredStyle: .alert)
        
        alertController.addTextField {
            textField -> Void in textField.placeholder = "Password"
            textField.textColor = .black
            textField.isSecureTextEntry = true
        }
        
        print(alertController.textFields ?? "")
        
        let action1 = UIAlertAction(title: "Connect", style: .destructive, handler:nil)
        _ = UIAlertAction(title: "No", style: .default, handler:nil)
        
        alertController.addAction(action1)
    
        
        self.present(alertController, animated: true, completion: nil)
    } 
    
    
    @IBAction func onTapAlertDialogCallMe(_ sender: UIButton) {
        
        let application: UIApplication = UIApplication.shared
        
        let alertController = UIAlertController(title: "Call", message: "Message", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Call Me", style: .default, handler:{(action) in
            let phone : String = "tel://1234567890";  application.open(URL(string: phone)!,options: [:], completionHandler: nil )
        })
        
        let messageAction = UIAlertAction(title: "Drop message", style: .default, handler:{(action) in
            application.open(URL(string : "sms:123456879")!,options: [:], completionHandler: nil )
        })
        alertController.addAction(messageAction)
        
        
        let mapsAction = UIAlertAction(title: "Pin Location", style: .destructive, handler:{(action) in
            application.open(URL(string : "https://www.google.com/maps/place/Shyamal+Cross+Rd,+Shyamal,+Ahmedabad,+Gujarat+380015/@23.0227968,72.531968,14z/data=!4m6!3m5!1s0x395e84d638c4679f:0x21c2a193936cbccb!8m2!3d23.0119795!4d72.528454!16s%2Fg%2F11g88cbrs0?entry=ttu")!,options: [:], completionHandler: nil )
        })
        alertController.addAction(mapsAction)
        
        self.present(alertController,animated: true, completion: nil )
        
    }
    
    
    @IBOutlet weak var loader: UIActivityIndicatorView!


    @IBAction func onStartLoader(_ sender: UIButton) {
        loader.isHidden = false 
        loader.startAnimating()
    }
    
    @IBAction func onStopLoader(_ sender: UIButton) {
        loader.isHidden = true 
        loader.stopAnimating()
    }
}

