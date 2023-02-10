//
//  ViewController.swift
//  lessonstoryboard
//
//  Created by Aruzhan Tlek on 24.12.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var accountMoney: UILabel!
    
    @IBOutlet weak var changeMoney: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressChangeButton(_ sender: Any) {
        accountMoney.text = "Account: \(Int.random(in: 1000..<10000))$"
    }
    
}

