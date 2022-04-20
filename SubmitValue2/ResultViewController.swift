//
//  ResultViewController.swift
//  SubmitValue2
//
//  Created by 한규철 on 3/22/R4.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultInterval: UILabel!
    
    //이메일 값을 받을 변수
    var paramEmail: String = ""
    //업데이트 값을 받을 변수
    var paramUpdate: Bool = false
    //인터벌 값을 받을 변수
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신 " : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
   
    @IBAction func onBack(_sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
