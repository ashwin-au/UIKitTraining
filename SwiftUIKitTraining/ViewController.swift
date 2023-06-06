//
//  ViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 10/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var loginMessage: UILabel!
    @IBOutlet weak var isSecure: UIButton!
    var secureImage: String {
        return password.isSecureTextEntry ? "eyebrow" : "eye"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func onTapLogin(_ sender: Any) {
        if userName.text == "admin" && password.text == "123" {
            self.loginMessage.text = "Login successfully"
            if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController {
                self.navigationController?.pushViewController(viewController, animated: true)
            }
        } else {
            if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController {
                self.navigationController?.pushViewController(viewController, animated: true)
            }
            self.loginMessage.text = "Login failed"
        }
    }
    
    @IBAction func showPassword(_ sender: Any) {
        password.isSecureTextEntry.toggle()
        isSecure.setImage(UIImage(systemName: secureImage), for: .normal)
    }
}

