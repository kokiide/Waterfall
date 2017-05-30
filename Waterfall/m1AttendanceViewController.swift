//
//  m1AttendanceViewController.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/31.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class m1AttendanceViewController: UIViewController {
    
    @IBOutlet var att: UILabel!
    @IBOutlet var abs: UILabel!
    @IBOutlet var attRate: UILabel!
    let saveData = UserDefaults.standard
    
    var attNum: Int = 0
    var absNum: Int = 0
    var attRateNum: Int = 0
    var total: Int = 0
    var calculation = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if saveData.string(forKey: "m1attNum") != nil {
            if saveData.string(forKey: "m1absNum") != nil {
                absNum = saveData.integer(forKey: "m1absNum")
                abs.text = String(absNum)

                attNum = saveData.integer(forKey: "m1attNum")
                att.text = String(attNum)
        } else if saveData.string(forKey: "m1absNum") == nil{
                attNum = saveData.integer(forKey: "m1attNum")
                att.text = String(attNum)
                
                absNum = 0
                abs.text = String(absNum)
            }}else if saveData.string(forKey: "m1absNum") != nil {
            attNum = 0
            att.text = String(attNum)
            absNum = saveData.integer(forKey: "m1absNum")
            abs.text = String(absNum)
        }else{
            attNum = 0
            att.text = String(attNum)
            absNum = 0
            abs.text = String(absNum)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func attPlus(){
        attNum = attNum + 1
        att.text = String(attNum)
        
        saveData.set(attNum, forKey: "m1attNum")
        calculateRate()
    }
    
    @IBAction func attMinus(){
        attNum = attNum - 1
        att.text = String(attNum)
        
        saveData.set(attNum, forKey: "m1attNum")
        calculateRate()
    }
    
    @IBAction func absPlus() {
        absNum = absNum + 1
        abs.text = String(absNum)
        saveData.set(absNum, forKey: "m1absNum")
        calculateRate()
    }
    
    @IBAction func absMinus() {
        absNum = absNum - 1
        abs.text = String(absNum)
        saveData.set(absNum, forKey: "m1absNum")
        calculateRate()
    }
    
    func calculateRate() {
    absNum = saveData.integer(forKey: "m1absNum")
    attNum = saveData.integer(forKey: "m1attNum")
    total = absNum + attNum
    calculation = Double(attNum / total * 100)
    
    attRate.text = String(calculation) + "%"
        saveData.set(calculation, forKey: "m1attRateNum")
    }
    
    @IBAction func m1changeClassTapped() {
        self.performSegue(withIdentifier: "m1ChangeClass", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
