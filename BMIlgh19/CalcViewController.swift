//
//  CalcViewController.swift
//  BMIlgh19
//
//  Created by 이경호 on 2022/12/10.
//

import UIKit

class CalcViewController: UIViewController {

    
    @IBOutlet weak var textwon: UITextField!
    @IBOutlet weak var dollerlbl: UILabel!
    
    @IBAction func calbtn(_ sender: UIButton) {
        if textwon.text == ""  {
            print("Input Error")
            dollerlbl.text = "금액을 입력하세요"
            return
        }
        else {
            let won = Double(textwon.text!)!
            let dollor = (won / 1300)
            let shortDoller = String(format: "%.1f", dollor)
            dollerlbl.text = "\(shortDoller)$"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
