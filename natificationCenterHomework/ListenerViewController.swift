//
//  ListenerViewController.swift
//  natificationCenterHomework
//
//  Created by Defne Çetiner on 28.03.2023.
//

import UIKit

class ListenerViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  let notificationCenter: NotificationCenter = .default // notification tanımlayıp abone oluyoruz
        NotificationCenter.default.addObserver(self, selector: #selector(showResult(data: )), name: NSNotification.Name(rawValue:"showResult"), object: nil)
    }
    
    @objc func showResult(data:Notification) {
        if let numberInfo = data.userInfo{
            let result = numberInfo["Result"] as! Int
            self.resultLabel.text = "Result: " + String(result)
        }
       
            
        }
    }



