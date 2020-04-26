//
//  OneHundredViewController.swift
//  project3
//
//  Created by SWUCOMPUTER on 2020/04/25.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OneHundredViewController: UIViewController {


    @IBOutlet var oneHundred: UIImageView!
    @IBOutlet var switchMentView: UILabel!
    
    let firstimage = UIImage(named: "1.png")
    let oneHundredImage = UIImage(named: "100%.jpg")
    let seventyfiveImvage = UIImage(named: "75%.jpg")
    let fiftyImage = UIImage(named: "50%.jpg")
    let twentyfiveImage = UIImage(named: "25%.jpg")
    let zeroImage = UIImage(named: "0%.jpg")
    
    var checkPercent : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneHundred.image = firstimage
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if sender.isOn && checkPercent == 0 {
        oneHundred.image = oneHundredImage
        switchMentView.text = "축하합니다! 오늘 할 일을 완성했어요!!"
    }
    else if sender.isOn && checkPercent == 1{
        oneHundred.image = seventyfiveImvage
        switchMentView.text = "잘 하고 있어요!!"
    }
    else if sender.isOn && checkPercent == 2{
        oneHundred.image = fiftyImage
        switchMentView.text = "조금 더 합시다!!"
    }
    else if sender.isOn && checkPercent == 3{
        oneHundred.image = twentyfiveImage
        switchMentView.text = "제대로 합시다!!"
    }
    else if sender.isOn && checkPercent == 4{
        oneHundred.image = zeroImage
        switchMentView.text = "할 말이 없네요... 반성하세요!"
        }
        else {
            oneHundred.image = firstimage
            switchMentView.text = "스위치 버튼을 눌러보세요"
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

}
