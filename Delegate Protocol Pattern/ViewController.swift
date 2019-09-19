//
//  ViewController.swift
//  Delegate Protocol Pattern
//
//  Created by Nahin Ahmed on 19.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var numLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func selectBtnTapped(_ sender: UIButton) {
        
        let dc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        dc.choosenNumberDelegate = self
        present(dc, animated: true, completion: nil)
    }
}

extension ViewController: ChoosenNumberDelegate {
    func gotNum(num: Int) {
        numLbl.text = "You selected: \(num)"
    }
}
