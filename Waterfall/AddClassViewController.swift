//
//  ViewController3.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/30.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class AddClassViewController: UIViewController {
    
    @IBOutlet var classNameTF: UITextField!
    @IBOutlet var classRoomTF: UITextField!
    @IBOutlet var tableTime: UILabel!
    
    var className = ""
    var classRoom = ""
    var classInfo = ""
    let saveData = UserDefaults.standard
    var pageDeciderRecieve : Int = 100
    
    let weekTime = ["mon1","mon2","mon3","mon4","mon5","mon6","mon7","tue1","tue2","tue3","tue4","tue5","tue6","tue7","wed1","wed2","wed3","wed4","wed5","wed6","wed7","thu1","thu2","thu3","thu4","thu5","thu6","thu7","fri1","fri2","fri3","fri4","fri5","fri6","fri7","sat1","sat2","sat3","sat4","sat5","sat6","sat7","etc1","etc2","etc3","etc4","etc5","etc6","etc7"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       pageDeciderRecieve = saveData.integer(forKey: "PAGEDECIDER")
       tableTime.text = weekTime[pageDeciderRecieve]
    }
    
    
    @IBAction func saveIsTapped() {

        className = classNameTF.text!
        classRoom = classRoomTF.text!
        
        if classRoom.isEmpty{
            if className.isEmpty{
            //not sending classInfo but sending nil!
            saveData.set(nil, forKey: weekTime[pageDeciderRecieve] + "CLASSINFO")
            self.performSegue(withIdentifier: "toTable", sender: nil)
            }else {
        classInfo = className
        saveData.set(classInfo, forKey: weekTime[pageDeciderRecieve] + "CLASSINFO")
        self.performSegue(withIdentifier: "toTable", sender: nil)
            }}else {
        classInfo = className + " [" + classRoom + "]"
        saveData.set(classInfo, forKey: weekTime[pageDeciderRecieve] + "CLASSINFO")
        self.performSegue(withIdentifier: "toTable", sender: nil)
      /* ViewController2　にあるfunction //upDate() をここで実行したい    */
        }}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
