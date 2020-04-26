//
//  ViewController.swift
//  project3
//
//  Created by SWUCOMPUTER on 2020/04/24.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var putText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CheckViewController{
            destVC.shouldToDo = putText.text!
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        putText = textField
        textField.resignFirstResponder()
        return true
    }
}

