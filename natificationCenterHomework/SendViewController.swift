//
//  SendViewController.swift
//  natificationCenterHomework
//
//  Created by Defne Çetiner on 28.03.2023.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func addActionButton(_ sender: Any) {
        let result = Int(firstNumberTextField.text!)! + Int(secondNumberTextField.text!)!
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "showResult"), object: nil, userInfo: ["Result": result])
        dismiss(animated: true)
       
       
    }
    
}
