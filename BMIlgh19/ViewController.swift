//
//  ViewController.swift
//  BMIlgh19
//
//  Created by 이경호 on 2022/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet var back: UIView!
    @IBAction func sc(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("남성")
        }
        else {
            print("여성")
        }
    }
    @IBAction func switchOnOff(_ sender: UISwitch) {
        if sender.isOn {
            back.backgroundColor = UIColor.systemOrange
        }
        else {
            back.backgroundColor = UIColor.systemPurple
        }
    }
    @IBAction func calcBmi(_ sender: UIButton) {
        if txtWeight.text == "" || txtHeight.text == "" {
            print("Input Error")
            lblResult.text = "키와 체중을 입력하세요"
            return
        }
        else {
            let weight = Double(txtWeight.text!)!
            let height = Double(txtHeight.text!)!
            let bmi = weight / (height*height*0.0001) // kg/m*m
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 비만"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "2단계 비만"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "1단계 비만"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                body = "정상"
            } else {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                body = "저체중"
            }
            print("BMI:\(shortenedBmi), 판정:\(body)")
            lblResult.backgroundColor = color
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 10
            lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

