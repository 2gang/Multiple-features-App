//
//  WebViewController.swift
//  BMIlgh19
//
//  Created by 이경호 on 2022/12/06.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goNaver(_ sender: UIButton) {
        guard let myURL = URL(string:"https://www.youtube.com") else { return }
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let blogURL = URL(string:"https://rud0503.tistory.com") else { return }
        let myRequest = URLRequest(url: blogURL)
        webView.load(myRequest)
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
