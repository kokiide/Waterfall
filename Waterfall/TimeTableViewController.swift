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

//mon4
        if saveData.string(forKey: "mon4CLASSINFO") != nil{
            m4classInfo = saveData.string(forKey: "mon4CLASSINFO")!
            lm4.numberOfLines = 0
            lm4.text = m4classInfo
        }else {
            lm4.numberOfLines = 0
            lm4.text = ""
        }
        
//mon5
        if saveData.string(forKey: "mon5CLASSINFO") != nil{
            m5classInfo = saveData.string(forKey: "mon5CLASSINFO")!
            lm5.numberOfLines = 0
            lm5.text = m5classInfo
        }else {
            lm5.numberOfLines = 0
            lm5.text = ""
        }

//mon6
        if saveData.string(forKey: "mon6CLASSINFO") != nil{
            m6classInfo = saveData.string(forKey: "mon6CLASSINFO")!
            lm6.numberOfLines = 0
            lm6.text = m6classInfo
        }else {
            lm6.numberOfLines = 0
            lm6.text = ""
        }
//mon7
/*        if saveData.string(forKey: "mon7CLASSINFO") != nil{
            m7classInfo = saveData.string(forKey: "mon7CLASSINFO")!
            lm7.numberOfLines = 0
            lm7.text = m7classInfo
        }else {
            lm7.numberOfLines = 0
            lm7.text = ""
        }
        */
        
//tue1
        if saveData.string(forKey: "tue1CLASSINFO") != nil{
            t1classInfo = saveData.string(forKey: "tue1CLASSINFO")!
            lt1.numberOfLines = 0
            lt1.text = t1classInfo
        }else {
            lt1.numberOfLines = 0
            lt1.text = ""
        }

//tue2
        if saveData.string(forKey: "tue2CLASSINFO") != nil{
            t2classInfo = saveData.string(forKey: "tue2CLASSINFO")!
            lt2.numberOfLines = 0
            lt2.text = t2classInfo
        }else {
            lt2.numberOfLines = 0
            lt2.text = ""
        }
//tue3
        if saveData.string(forKey: "tue3CLASSINFO") != nil{
            t3classInfo = saveData.string(forKey: "tue3CLASSINFO")!
            lt3.numberOfLines = 0
            lt3.text = t3classInfo
        }else {
            lt3.numberOfLines = 0
            lt3.text = ""
        }
//tue4
        if saveData.string(forKey: "tue4CLASSINFO") != nil{
            t4classInfo = saveData.string(forKey: "tue4CLASSINFO")!
            lt4.numberOfLines = 0
            lt4.text = t4classInfo
        }else {
            lt4.numberOfLines = 0
            lt4.text = ""
        }
//tue5
        if saveData.string(forKey: "tue5CLASSINFO") != nil{
            t5classInfo = saveData.string(forKey: "tue5CLASSINFO")!
            lt5.numberOfLines = 0
            lt5.text = t5classInfo
        }else {
            lt5.numberOfLines = 0
            lt5.text = ""
        }
//tue6
        if saveData.string(forKey: "tue6CLASSINFO") != nil{
            t6classInfo = saveData.string(forKey: "tue6CLASSINFO")!
            lt6.numberOfLines = 0
            lt6.text = t6classInfo
        }else {
            lt6.numberOfLines = 0
            lt6.text = ""
        }
//tue7
/*        if saveData.string(forKey: "tue7CLASSINFO") != nil{
            t7classInfo = saveData.string(forKey: "tue7CLASSINFO")!
            lt7.numberOfLines = 0
            lt7.text = t7classInfo
        }else {
            lt7.numberOfLines = 0
            lt7.text = ""
        }*/
        
//wed1
        if saveData.string(forKey: "wed1CLASSINFO") != nil{
            w1classInfo = saveData.string(forKey: "wed1CLASSINFO")!
            lw1.numberOfLines = 0
            lw1.text = w1classInfo
        }else {
            lw1.numberOfLines = 0
            lw1.text = ""
        }
//wed2
        if saveData.string(forKey: "wed2CLASSINFO") != nil{
            w2classInfo = saveData.string(forKey: "wed2CLASSINFO")!
            lw2.numberOfLines = 0
            lw2.text = w2classInfo
        }else {
            lw2.numberOfLines = 0
            lw2.text = ""
        }
//wed3
        if saveData.string(forKey: "wed3CLASSINFO") != nil{
            w3classInfo = saveData.string(forKey: "wed3CLASSINFO")!
            lw3.numberOfLines = 0
            lw3.text = w3classInfo
        }else {
            lw3.numberOfLines = 0
            lw3.text = ""
        }
//wed4
        if saveData.string(forKey: "wed4CLASSINFO") != nil{
            w4classInfo = saveData.string(forKey: "wed4CLASSINFO")!
            lw4.numberOfLines = 0
            lw4.text = w4classInfo
        }else {
            lw4.numberOfLines = 0
            lw4.text = ""
        }
//wed5
        if saveData.string(forKey: "wed5CLASSINFO") != nil{
            w5classInfo = saveData.string(forKey: "wed5CLASSINFO")!
            lw5.numberOfLines = 0
            lw5.text = w5classInfo
        }else {
            lw5.numberOfLines = 0
            lw5.text = ""
        }
//wed6
        if saveData.string(forKey: "wed6CLASSINFO") != nil{
            w6classInfo = saveData.string(forKey: "wed6CLASSINFO")!
            lw6.numberOfLines = 0
            lw6.text = w6classInfo
        }else {
            lw6.numberOfLines = 0
            lw6.text = ""
        }
//wed7
/*        if saveData.string(forKey: "wed7CLASSINFO") != nil{
            w7classInfo = saveData.string(forKey: "wed7CLASSINFO")!
            lw7.numberOfLines = 0
            lw7.text = w7classInfo
        }else {
            lw7.numberOfLines = 0
            lw7.text = ""
        } */

//thu1
        if saveData.string(forKey: "thu1CLASSINFO") != nil{
            th1classInfo = saveData.string(forKey: "thu1CLASSINFO")!
            lth1.numberOfLines = 0
            lth1.text = th1classInfo
        }else {
            lth1.numberOfLines = 0
            lth1.text = ""
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
    //m4 tapped code
    @IBAction func m4Tapped () {
        if saveData.string(forKey: "mon4CLASSINFO") == nil{
            pageDecider = 3
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 3
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    
    //m5 tapped code
    @IBAction func m5Tapped () {
        if saveData.string(forKey: "mon5CLASSINFO") == nil{
            pageDecider = 4
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 4
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    
    //m6 tapped code
    @IBAction func m6Tapped () {
        if saveData.string(forKey: "mon6CLASSINFO") == nil{
            pageDecider = 5
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 5
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    //m7 tapped code
/*    @IBAction func m7Tapped () {
        if saveData.string(forKey: "mon7CLASSINFO") == nil{
            pageDecider = 6
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 6
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    */
    
    
    //t1 tapped code
    @IBAction func t1Tapped () {
        if saveData.string(forKey: "tue1CLASSINFO") == nil{
            pageDecider = 7
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 7
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //th1 tapped code
    @IBAction func th1Tapped () {
        if saveData.string(forKey: "thu1CLASSINFO") == nil{
            pageDecider = 21
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 21
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
