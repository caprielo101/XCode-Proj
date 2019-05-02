//
//  ViewController.swift
//  UIKitPart1
//
//  Created by Josiah Elisha on 24/04/19.
//  Copyright © 2019 Josiah Elisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notificationName: UILabel!
    
    @IBOutlet weak var TapProgressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //debugPrint(#function)
        notificationName.text = "Notifikasi ini sudah diganti"
        TapProgressView.progressViewStyle = UIProgressView.Style.bar
    }
    
    @IBAction func notifChangeButton(_ sender: Any) {
            debugPrint(#function)
    }
    
    @IBAction func ProgressUpButton(_ sender: Any) {
    //TapProgressView.setProgress((TapProgressView.progress+0.1), animated: true)
 TapProgressView.setProgress((TapProgressView.progress+0.05), animated: true)
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        TapProgressView.progress = 0
    }
}

