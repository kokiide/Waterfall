//
//  ViewController2.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/30.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class TimeTableViewController: UIViewController {
    
    let saveData = UserDefaults.standard
    
    // var's for class info = class name + class room
    var m1classInfo = ""
    var m2classInfo = ""
    var m3classInfo = ""
    var m4classInfo = ""
    var m5classInfo = ""
    var m6classInfo = ""
    var m7classInfo = ""
    
    var t1classInfo = ""
    var t2classInfo = ""
    var t3classInfo = ""
    var t4classInfo = ""
    var t5classInfo = ""
    var t6classInfo = ""
    var t7classInfo = ""
    
    var w1classInfo = ""
    var w2classInfo = ""
    var w3classInfo = ""
    var w4classInfo = ""
    var w5classInfo = ""
    var w6classInfo = ""
    var w7classInfo = ""
    
    var th1classInfo = ""
    var th2classInfo = ""
    var th3classInfo = ""
    var th4classInfo = ""
    var th5classInfo = ""
    var th6classInfo = ""
    var th7classInfo = ""
    
    var f1classInfo = ""
    var f2classInfo = ""
    var f3classInfo = ""
    var f4classInfo = ""
    var f5classInfo = ""
    var f6classInfo = ""
    var f7classInfo = ""
    
    var s1classInfo = ""
    var s2classInfo = ""
    var s3classInfo = ""
    var s4classInfo = ""
    var s5classInfo = ""
    var s6classInfo = ""
    var s7classInfo = ""
    
    var e1classInfo = ""
    var e2classInfo = ""
    var e3classInfo = ""
    var e4classInfo = ""
    var e5classInfo = ""
    var e6classInfo = ""
    var e7classInfo = ""
    
    
    var pageDecider : Int = 100
    
    
    //buttons
    
    @IBOutlet var m1: UIButton!
    @IBOutlet var m2: UIButton!
    @IBOutlet var m3: UIButton!
    @IBOutlet var m4: UIButton!
    @IBOutlet var m5: UIButton!
    @IBOutlet var m6: UIButton!
    @IBOutlet var m7: UIButton!
    
    @IBOutlet var t1: UIButton!
    @IBOutlet var t2: UIButton!
    @IBOutlet var t3: UIButton!
    @IBOutlet var t4: UIButton!
    @IBOutlet var t5: UIButton!
    @IBOutlet var t6: UIButton!
    @IBOutlet var t7: UIButton!
    
    @IBOutlet var w1: UIButton!
    @IBOutlet var w2: UIButton!
    @IBOutlet var w3: UIButton!
    @IBOutlet var w4: UIButton!
    @IBOutlet var w5: UIButton!
    @IBOutlet var w6: UIButton!
    @IBOutlet var w7: UIButton!
    
    @IBOutlet var th1: UIButton!
    @IBOutlet var th2: UIButton!
    @IBOutlet var th3: UIButton!
    @IBOutlet var th4: UIButton!
    @IBOutlet var th5: UIButton!
    @IBOutlet var th6: UIButton!
    @IBOutlet var th7: UIButton!
    
    @IBOutlet var f1: UIButton!
    @IBOutlet var f2: UIButton!
    @IBOutlet var f3: UIButton!
    @IBOutlet var f4: UIButton!
    @IBOutlet var f5: UIButton!
    @IBOutlet var f6: UIButton!
    @IBOutlet var f7: UIButton!
    
    @IBOutlet var s1: UIButton!
    @IBOutlet var s2: UIButton!
    @IBOutlet var s3: UIButton!
    @IBOutlet var s4: UIButton!
    @IBOutlet var s5: UIButton!
    @IBOutlet var s6: UIButton!
    @IBOutlet var s7: UIButton!
    
    @IBOutlet var e1: UIButton!
    @IBOutlet var e2: UIButton!
    @IBOutlet var e3: UIButton!
    @IBOutlet var e4: UIButton!
    @IBOutlet var e5: UIButton!
    @IBOutlet var e6: UIButton!
    @IBOutlet var e7: UIButton!
    
    //labels
    
    @IBOutlet var lm1: UILabel!
    @IBOutlet var lm2: UILabel!
    @IBOutlet var lm3: UILabel!
    @IBOutlet var lm4: UILabel!
    @IBOutlet var lm5: UILabel!
    @IBOutlet var lm6: UILabel!
    @IBOutlet var lm7: UILabel!
    
    @IBOutlet var lt1: UILabel!
    @IBOutlet var lt2: UILabel!
    @IBOutlet var lt3: UILabel!
    @IBOutlet var lt4: UILabel!
    @IBOutlet var lt5: UILabel!
    @IBOutlet var lt6: UILabel!
    @IBOutlet var lt7: UILabel!
    
    @IBOutlet var lw1: UILabel!
    @IBOutlet var lw2: UILabel!
    @IBOutlet var lw3: UILabel!
    @IBOutlet var lw4: UILabel!
    @IBOutlet var lw5: UILabel!
    @IBOutlet var lw6: UILabel!
    @IBOutlet var lw7: UILabel!
    
    @IBOutlet var lth1: UILabel!
    @IBOutlet var lth2: UILabel!
    @IBOutlet var lth3: UILabel!
    @IBOutlet var lth4: UILabel!
    @IBOutlet var lth5: UILabel!
    @IBOutlet var lth6: UILabel!
    @IBOutlet var lth7: UILabel!
    
    @IBOutlet var lf1: UILabel!
    @IBOutlet var lf2: UILabel!
    @IBOutlet var lf3: UILabel!
    @IBOutlet var lf4: UILabel!
    @IBOutlet var lf5: UILabel!
    @IBOutlet var lf6: UILabel!
    @IBOutlet var lf7: UILabel!
    
    @IBOutlet var ls1: UILabel!
    @IBOutlet var ls2: UILabel!
    @IBOutlet var ls3: UILabel!
    @IBOutlet var ls4: UILabel!
    @IBOutlet var ls5: UILabel!
    @IBOutlet var ls6: UILabel!
    @IBOutlet var ls7: UILabel!
    
    @IBOutlet var le1: UILabel!
    @IBOutlet var le2: UILabel!
    @IBOutlet var le3: UILabel!
    @IBOutlet var le4: UILabel!
    @IBOutlet var le5: UILabel!
    @IBOutlet var le6: UILabel!
    @IBOutlet var le7: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //mon1
        if saveData.string(forKey: "mon1CLASSINFO") != nil{
            m1classInfo = saveData.string(forKey: "mon1CLASSINFO")!
            lm1.numberOfLines = 0
            lm1.text = m1classInfo
            }else {
            lm1.numberOfLines = 0
            lm1.text = ""
        }
        
        //mon2
        if saveData.string(forKey: "mon2CLASSINFO") != nil{
            m2classInfo = saveData.string(forKey: "mon2CLASSINFO")!
            lm2.numberOfLines = 0
            lm2.text = m2classInfo
        }else {
            lm2.numberOfLines = 0
            lm2.text = ""
        }
        
//mon3
        if saveData.string(forKey: "mon3CLASSINFO") != nil{
            m3classInfo = saveData.string(forKey: "mon3CLASSINFO")!
            lm3.numberOfLines = 0
            lm3.text = m3classInfo
        }else {
            lm3.numberOfLines = 0
            lm3.text = ""
        }
        
        
        
        }

        

        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

//m1 tapped code
    @IBAction func m1Tapped () {
        if saveData.string(forKey: "mon1CLASSINFO") == nil{
        pageDecider = 0
        saveData.set( pageDecider, forKey: "PAGEDECIDER")
        self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
        pageDecider = 0
        saveData.set( pageDecider,forKey: "PAGEDECIDER")
        self.performSegue(withIdentifier: "Attendance", sender: nil)
    }
    }
    
//m2 tapped code
    @IBAction func m2Tapped () {
        if saveData.string(forKey: "mon2CLASSINFO") == nil{
            pageDecider = 1
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 1
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    
    //m3 tapped code
    @IBAction func m3Tapped () {
        if saveData.string(forKey: "mon3CLASSINFO") == nil{
            pageDecider = 2
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 2
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
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
