//
//  ViewController.swift
//  SubmitValue2
//
//  Created by 한규철 on 3/22/R4.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true){
            self.isUpdateText.text = "갱신함"
        }else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_sender: Any){
        
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else{
            return
        }
        
        //값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.navigationController?.pushViewController(rvc, animated: true)
        
        
    }
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else{
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
}
