//
//  CheckViewController.swift
//  project3
//
//  Created by SWUCOMPUTER on 2020/04/24.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CheckViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet var displayLabel: UILabel!
    @IBOutlet var pickerDisplay: UIView!
    @IBOutlet var choosePicker: UIPickerView!
    
    let percent : Array<String> = ["100%", "75%", "50%", "25%", "0%"]
    var shouldToDo : String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if shouldToDo.isEmpty{
            pickerDisplay.isHidden = true
        }
       else
        {
            pickerDisplay.isHidden = false
            displayLabel.text = shouldToDo
        }
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "onehundred"
        {
            let destVC = segue.destination as! OneHundredViewController
            destVC.checkPercent = self.choosePicker.selectedRow(inComponent: 0)
           
        }
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return percent.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return percent[row]
    }
    
    
}
