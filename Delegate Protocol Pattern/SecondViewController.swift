//
//  SecondViewController.swift
//  Delegate Protocol Pattern
//
//  Created by Nahin Ahmed on 19.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import UIKit

protocol ChoosenNumberDelegate {
    func gotNum(num: Int)
}

class SecondViewController: UIViewController {
    
    var choosenNumberDelegate: ChoosenNumberDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func oneBtnTapped(_ sender: UIButton) {
        guard let choosenNumberDelegate = choosenNumberDelegate else {
            return
        }
        
        choosenNumberDelegate.gotNum(num: 1)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func twoBtnTapped(_ sender: UIButton) {
        
        guard let choosenNumberDelegate = choosenNumberDelegate else {
            return
        }
        
        choosenNumberDelegate.gotNum(num: 2)
        dismiss(animated: true, completion: nil)
    }
}
