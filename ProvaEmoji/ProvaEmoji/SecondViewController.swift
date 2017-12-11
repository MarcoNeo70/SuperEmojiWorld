//
//  SecondViewController.swift
//  ProvaEmoji
//
//  Created by Marco Romano on 05/12/2017.
//  Copyright © 2017 com.academy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var lblSecondVC: UILabel!
    @IBOutlet var fieldTextSecondVC: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSecondVC.font = UIFont(name: "Optima", size: 30)
        lblSecondVC.text = "Welcome " + Singleton.shared.info + " !"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
