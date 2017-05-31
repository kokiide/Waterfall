//
//  m1AttendanceViewController.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/31.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class AttendanceViewController: UIViewController {
    
    @IBOutlet var barTitle: UILabel!
    @IBOutlet var att: UILabel!
    @IBOutlet var abs: UILabel!
    @IBOutlet var attRate: UILabel!
    let saveData = UserDefaults.standard
    var nameofClass = ""
    let weekTime = ["mon1","mon2","mon3","mon4","mon5","mon6","mon7","tue1","tue2","tue3","tue4","tue5","tue6","tue7","wed1","wed2","wed3","wed4","wed5","wed6","wed7","thu1","thu2","thu3","thu4","thu5","thu6","thu7","fri1","fri2","fri3","fri4","fri5","fri6","fri7","sat1","sat2","sat3","sat4","sat5","sat6","sat7","etc1","etc2","etc3","etc4","etc5","etc6","etc7"]
    // let weekTimeは必ずAddClassViewControllerのものと同値にすることを忘れない!解読のための値をrecieveするのに必要だから。
    
    var attNum: Int = 0
    var absNum: Int = 0
    var attRateNum: Int = 0
    var total: Int = 0
    var calculation = 0.0
    
    var pageDeciderRecieve : Int = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageDeciderRecieve = saveData.integer(forKey: "PAGEDECIDER") /*番号をもらう */
        barTitle.text = saveData.string(forKey: weekTime[pageDeciderRecieve] + "CLASSINFO")
        
        if saveData.string(forKey: weekTime[pageDeciderRecieve] + "attNum") != nil {
            if saveData.string(forKey: weekTime[pageDeciderRecieve] + "absNum") != nil {
                absNum = saveData.integer(forKey: weekTime[pageDeciderRecieve] + "absNum")
                abs.text = String(absNum)

                attNum = saveData.integer(forKey: weekTime[pageDeciderRecieve] + "attNum")
                att.text = String(attNum)
        } else if saveData.string(forKey: weekTime[pageDeciderRecieve] + "absNum") == nil{
                attNum = saveData.integer(forKey: weekTime[pageDeciderRecieve] + "attNum")
                att.text = String(attNum)
                
                absNum = 0
                abs.text = String(absNum)
            }}else if saveData.string(forKey: weekTime[pageDeciderRecieve] + "absNum") != nil {
            attNum = 0
            att.text = String(attNum)
            absNum = saveData.integer(forKey: weekTime[pageDeciderRecieve] + "absNum")
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
        
        saveData.set(attNum, forKey: weekTime[pageDeciderRecieve] + "attNum")
//        calculateRate()
    }
    
    @IBAction func attMinus(){
        attNum = attNum - 1
        att.text = String(attNum)
        
        saveData.set(attNum, forKey: weekTime[pageDeciderRecieve] + "attNum")
//        calculateRate()
    }
    
    @IBAction func absPlus() {
        absNum = absNum + 1
        abs.text = String(absNum)
        saveData.set(absNum, forKey: weekTime[pageDeciderRecieve] + "absNum")
        //calculateRate()
    }
    
    @IBAction func absMinus() {
        absNum = absNum - 1
        abs.text = String(absNum)
        saveData.set(absNum, forKey: weekTime[pageDeciderRecieve] + "absNum")
        //calculateRate()
    }
    
/*    func calculateRate() {
    absNum = saveData.integer(forKey: "m1absNum")
    attNum = saveData.integer(forKey: "m1attNum")
    total = absNum + attNum
    calculation = Double(attNum / total * 100)
    
    attRate.text = String(calculation) + "%"
        saveData.set(calculation, forKey: "m1attRateNum")
    }
*/
    
    
    /*REMEMBER TO CHECK OUT THIS CODE WHEN ERRORS OCCUARS. PERHAPS NEED'S PAGEDICIDER SENDING*/
    @IBAction func changeClassTapped() {
        attNum = 0
        absNum = 0
        saveData.set(attNum, forKey: weekTime[pageDeciderRecieve] + "attNum")
        saveData.set(absNum, forKey: weekTime[pageDeciderRecieve] + "absNum")
        
        self.performSegue(withIdentifier: "ChangeClass", sender: nil)
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
