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
    
    
    //giving each options an address
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
//image
    @IBOutlet var im1: UIImageView!
    let image1:UIImage = #imageLiteral(resourceName: "class")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//mon1
        if saveData.string(forKey: "mon1CLASSINFO") != nil{
            m1classInfo = saveData.string(forKey: "mon1CLASSINFO")!
            lm1.numberOfLines = 0
            lm1.text = m1classInfo
            im1.image = image1
        }else {
            lm1.numberOfLines = 0
            lm1.text = ""
            im1.image = nil
        }
/*
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
        if saveData.string(forKey: "mon7CLASSINFO") != nil{
            m7classInfo = saveData.string(forKey: "mon7CLASSINFO")!
            lm7.numberOfLines = 0
            lm7.text = m7classInfo
        }else {
            lm7.numberOfLines = 0
            lm7.text = ""
        }
        
        
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
        if saveData.string(forKey: "tue7CLASSINFO") != nil{
            t7classInfo = saveData.string(forKey: "tue7CLASSINFO")!
            lt7.numberOfLines = 0
            lt7.text = t7classInfo
        }else {
            lt7.numberOfLines = 0
            lt7.text = ""
        }
        
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
        if saveData.string(forKey: "wed7CLASSINFO") != nil{
            w7classInfo = saveData.string(forKey: "wed7CLASSINFO")!
            lw7.numberOfLines = 0
            lw7.text = w7classInfo
        }else {
            lw7.numberOfLines = 0
            lw7.text = ""
        }

//thu1
        if saveData.string(forKey: "thu1CLASSINFO") != nil{
            th1classInfo = saveData.string(forKey: "thu1CLASSINFO")!
            lth1.numberOfLines = 0
            lth1.text = th1classInfo
        }else {
            lth1.numberOfLines = 0
            lth1.text = ""
        }
//thu2
        if saveData.string(forKey: "thu2CLASSINFO") != nil{
            th2classInfo = saveData.string(forKey: "thu2CLASSINFO")!
            lth2.numberOfLines = 0
            lth2.text = th2classInfo
        }else {
            lth2.numberOfLines = 0
            lth2.text = ""
        }
//thu3
        if saveData.string(forKey: "thu3CLASSINFO") != nil{
            th3classInfo = saveData.string(forKey: "thu3CLASSINFO")!
            lth3.numberOfLines = 0
            lth3.text = th3classInfo
        }else {
            lth3.numberOfLines = 0
            lth3.text = ""
        }
//thu4
        if saveData.string(forKey: "thu4CLASSINFO") != nil{
            th4classInfo = saveData.string(forKey: "thu4CLASSINFO")!
            lth4.numberOfLines = 0
            lth4.text = th4classInfo
        }else {
            lth4.numberOfLines = 0
            lth4.text = ""
        }
//thu5
        if saveData.string(forKey: "thu5CLASSINFO") != nil{
            th5classInfo = saveData.string(forKey: "thu5CLASSINFO")!
            lth5.numberOfLines = 0
            lth5.text = th5classInfo
        }else {
            lth5.numberOfLines = 0
            lth5.text = ""
        }
//thu6
        if saveData.string(forKey: "thu6CLASSINFO") != nil{
            th6classInfo = saveData.string(forKey: "thu6CLASSINFO")!
            lth6.numberOfLines = 0
            lth6.text = th6classInfo
        }else {
            lth6.numberOfLines = 0
            lth6.text = ""
        }
//thu7
        if saveData.string(forKey: "thu7CLASSINFO") != nil{
            th7classInfo = saveData.string(forKey: "thu7CLASSINFO")!
            lth7.numberOfLines = 0
            lth7.text = th7classInfo
        }else {
            lth7.numberOfLines = 0
            lth7.text = ""
        }
//fri1
        if saveData.string(forKey: "fri1CLASSINFO") != nil{
            f1classInfo = saveData.string(forKey: "fri1CLASSINFO")!
            lf1.numberOfLines = 0
            lf1.text = f1classInfo
        }else {
            lf1.numberOfLines = 0
            lf1.text = ""
        }
//fri2
        if saveData.string(forKey: "fri2CLASSINFO") != nil{
            f2classInfo = saveData.string(forKey: "fri2CLASSINFO")!
            lf2.numberOfLines = 0
            lf2.text = f2classInfo
        }else {
            lf2.numberOfLines = 0
            lf2.text = ""
        }
//fri3
        if saveData.string(forKey: "fri3CLASSINFO") != nil{
            f3classInfo = saveData.string(forKey: "fri3CLASSINFO")!
            lf3.numberOfLines = 0
            lf3.text = f3classInfo
        }else {
            lf3.numberOfLines = 0
            lf3.text = ""
        }
//fri4
        if saveData.string(forKey: "fri4CLASSINFO") != nil{
            f4classInfo = saveData.string(forKey: "fri4CLASSINFO")!
            lf4.numberOfLines = 0
            lf4.text = f4classInfo
        }else {
            lf4.numberOfLines = 0
            lf4.text = ""
        }
//fri5
        if saveData.string(forKey: "fri5CLASSINFO") != nil{
            f5classInfo = saveData.string(forKey: "fri5CLASSINFO")!
            lf5.numberOfLines = 0
            lf5.text = f5classInfo
        }else {
            lf5.numberOfLines = 0
            lf5.text = ""
        }
//fri6
        if saveData.string(forKey: "fri6CLASSINFO") != nil{
            f6classInfo = saveData.string(forKey: "fri6CLASSINFO")!
            lf6.numberOfLines = 0
            lf6.text = f6classInfo
        }else {
            lf6.numberOfLines = 0
            lf6.text = ""
        }
//fri7
        if saveData.string(forKey: "fri7CLASSINFO") != nil{
            f7classInfo = saveData.string(forKey: "fri7CLASSINFO")!
            lf7.numberOfLines = 0
            lf7.text = f7classInfo
        }else {
            lf7.numberOfLines = 0
            lf7.text = ""
        }
//sat1
        if saveData.string(forKey: "sat1CLASSINFO") != nil{
            s1classInfo = saveData.string(forKey: "sat1CLASSINFO")!
            ls1.numberOfLines = 0
            ls1.text = s1classInfo
        }else {
            ls1.numberOfLines = 0
            ls1.text = ""
        }
//sat2
        if saveData.string(forKey: "sat2CLASSINFO") != nil{
            s2classInfo = saveData.string(forKey: "sat2CLASSINFO")!
            ls2.numberOfLines = 0
            ls2.text = s2classInfo
        }else {
            ls2.numberOfLines = 0
            ls2.text = ""
        }
//sat3
        if saveData.string(forKey: "sat3CLASSINFO") != nil{
            s3classInfo = saveData.string(forKey: "sat3CLASSINFO")!
            ls3.numberOfLines = 0
            ls3.text = s3classInfo
        }else {
            ls3.numberOfLines = 0
            ls3.text = ""
        }
//sat4
        if saveData.string(forKey: "sat4CLASSINFO") != nil{
            s4classInfo = saveData.string(forKey: "sat4CLASSINFO")!
            ls4.numberOfLines = 0
            ls4.text = s4classInfo
        }else {
            ls4.numberOfLines = 0
            ls4.text = ""
        }
//sat5
        if saveData.string(forKey: "sat5CLASSINFO") != nil{
            s5classInfo = saveData.string(forKey: "sat5CLASSINFO")!
            ls5.numberOfLines = 0
            ls5.text = s5classInfo
        }else {
            ls5.numberOfLines = 0
            ls5.text = ""
        }
//sat6
        if saveData.string(forKey: "sat6CLASSINFO") != nil{
            s6classInfo = saveData.string(forKey: "sat6CLASSINFO")!
            ls6.numberOfLines = 0
            ls6.text = s6classInfo
        }else {
            ls6.numberOfLines = 0
            ls6.text = ""
        }
//sat7
        if saveData.string(forKey: "sat7CLASSINFO") != nil{
            s7classInfo = saveData.string(forKey: "sat7CLASSINFO")!
            ls7.numberOfLines = 0
            ls7.text = s7classInfo
        }else {
            ls7.numberOfLines = 0
            ls7.text = ""
        }
//etc1
        if saveData.string(forKey: "etc1CLASSINFO") != nil{
            e1classInfo = saveData.string(forKey: "etc1CLASSINFO")!
            le1.numberOfLines = 0
            le1.text = e1classInfo
        }else {
            le1.numberOfLines = 0
            le1.text = ""
        }
//etc2
        if saveData.string(forKey: "etc2CLASSINFO") != nil{
            e2classInfo = saveData.string(forKey: "etc2CLASSINFO")!
            le2.numberOfLines = 0
            le2.text = e2classInfo
        }else {
            le2.numberOfLines = 0
            le2.text = ""
        }
//etc3
        if saveData.string(forKey: "etc3CLASSINFO") != nil{
            e3classInfo = saveData.string(forKey: "etc3CLASSINFO")!
            le3.numberOfLines = 0
            le3.text = e3classInfo
        }else {
            le3.numberOfLines = 0
            le3.text = ""
        }
//etc4
        if saveData.string(forKey: "etc4CLASSINFO") != nil{
            e4classInfo = saveData.string(forKey: "etc4CLASSINFO")!
            le4.numberOfLines = 0
            le4.text = e4classInfo
        }else {
            le4.numberOfLines = 0
            le4.text = ""
        }
//etc5
        if saveData.string(forKey: "etc5CLASSINFO") != nil{
            e5classInfo = saveData.string(forKey: "etc5CLASSINFO")!
            le5.numberOfLines = 0
            le5.text = e5classInfo
        }else {
            le5.numberOfLines = 0
            le5.text = ""
        }
//etc6
        if saveData.string(forKey: "etc6CLASSINFO") != nil{
            e6classInfo = saveData.string(forKey: "etc6CLASSINFO")!
            le6.numberOfLines = 0
            le6.text = e6classInfo
        }else {
            le6.numberOfLines = 0
            le6.text = ""
        }
//etc7
        if saveData.string(forKey: "etc7CLASSINFO") != nil{
            e7classInfo = saveData.string(forKey: "etc7CLASSINFO")!
            le7.numberOfLines = 0
            le7.text = e7classInfo
        }else {
            le7.numberOfLines = 0
            le7.text = ""
        }
        
 */
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
    @IBAction func m7Tapped () {
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
    
//t2 tapped code
    @IBAction func t2Tapped () {
        if saveData.string(forKey: "tue2CLASSINFO") == nil{
            pageDecider = 8
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 8
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//t3 tapped code
    @IBAction func t3Tapped () {
        if saveData.string(forKey: "tue3CLASSINFO") == nil{
            pageDecider = 9
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 9
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//t4 tapped code
    @IBAction func t4Tapped () {
        if saveData.string(forKey: "tue4CLASSINFO") == nil{
            pageDecider = 10
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 10
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//t5 tapped code
    @IBAction func t5Tapped () {
        if saveData.string(forKey: "tue5CLASSINFO") == nil{
            pageDecider = 11
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 11
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//t6 tapped code
    @IBAction func t6Tapped () {
        if saveData.string(forKey: "tue6CLASSINFO") == nil{
            pageDecider = 12
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 12
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//t7 tapped code
    @IBAction func t7Tapped () {
        if saveData.string(forKey: "tue7CLASSINFO") == nil{
            pageDecider = 13
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 13
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w1 tapped code
    @IBAction func w1Tapped () {
        if saveData.string(forKey: "wed1CLASSINFO") == nil{
            pageDecider = 14
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 14
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w2 tapped code
    @IBAction func w2Tapped () {
        if saveData.string(forKey: "wed2CLASSINFO") == nil{
            pageDecider = 15
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 15
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w3 tapped code
    @IBAction func w3Tapped () {
        if saveData.string(forKey: "wed3CLASSINFO") == nil{
            pageDecider = 16
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 16
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w4 tapped code
    @IBAction func w4Tapped () {
        if saveData.string(forKey: "wed4CLASSINFO") == nil{
            pageDecider = 17
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 17
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w5 tapped code
    @IBAction func w5Tapped () {
        if saveData.string(forKey: "wed5CLASSINFO") == nil{
            pageDecider = 18
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 18
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w6 tapped code
    @IBAction func w6Tapped () {
        if saveData.string(forKey: "wed6CLASSINFO") == nil{
            pageDecider = 19
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 19
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//w7 tapped code
    @IBAction func w7Tapped () {
        if saveData.string(forKey: "wed7CLASSINFO") == nil{
            pageDecider = 20
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 20
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
//th2 tapped code
    @IBAction func th2Tapped () {
        if saveData.string(forKey: "thu2CLASSINFO") == nil{
            pageDecider = 22
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 22
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//th3 tapped code
    @IBAction func th3Tapped () {
        if saveData.string(forKey: "thu3CLASSINFO") == nil{
            pageDecider = 23
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 23
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//th4 tapped code
    @IBAction func th4Tapped () {
        if saveData.string(forKey: "thu4CLASSINFO") == nil{
            pageDecider = 24
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 24
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//th5 tapped code
    @IBAction func th5Tapped () {
        if saveData.string(forKey: "thu5CLASSINFO") == nil{
            pageDecider = 25
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 25
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//th6 tapped code
    @IBAction func th6Tapped () {
        if saveData.string(forKey: "thu6CLASSINFO") == nil{
            pageDecider = 26
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 26
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//th7 tapped code
    @IBAction func th7Tapped () {
        if saveData.string(forKey: "thu7CLASSINFO") == nil{
            pageDecider = 27
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 27
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f1 tapped code
    @IBAction func f1Tapped () {
        if saveData.string(forKey: "fri1CLASSINFO") == nil{
            pageDecider = 28
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 28
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f2 tapped code
    @IBAction func f2Tapped () {
        if saveData.string(forKey: "fri2CLASSINFO") == nil{
            pageDecider = 29
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 29
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f3 tapped code
    @IBAction func f3Tapped () {
        if saveData.string(forKey: "fri3CLASSINFO") == nil{
            pageDecider = 30
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 30
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f4 tapped code
    @IBAction func f4Tapped () {
        if saveData.string(forKey: "fri4CLASSINFO") == nil{
            pageDecider = 31
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 31
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f5 tapped code
    @IBAction func f5Tapped () {
        if saveData.string(forKey: "fri5CLASSINFO") == nil{
            pageDecider = 32
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 32
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f6 tapped code
    @IBAction func f6Tapped () {
        if saveData.string(forKey: "fri6CLASSINFO") == nil{
            pageDecider = 33
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 33
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//f7 tapped code
    @IBAction func f7Tapped () {
        if saveData.string(forKey: "fri7CLASSINFO") == nil{
            pageDecider = 34
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 34
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s1 tapped code
    @IBAction func s1Tapped () {
        if saveData.string(forKey: "sat1CLASSINFO") == nil{
            pageDecider = 35
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 35
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s2 tapped code
    @IBAction func s2Tapped () {
        if saveData.string(forKey: "sat2CLASSINFO") == nil{
            pageDecider = 36
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 36
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s3 tapped code
    @IBAction func s3Tapped () {
        if saveData.string(forKey: "sat3CLASSINFO") == nil{
            pageDecider = 37
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 37
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s4 tapped code
    @IBAction func s4Tapped () {
        if saveData.string(forKey: "sat4CLASSINFO") == nil{
            pageDecider = 38
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 38
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s5 tapped code
    @IBAction func s5Tapped () {
        if saveData.string(forKey: "sat5CLASSINFO") == nil{
            pageDecider = 39
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 39
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s6 tapped code
    @IBAction func s6Tapped () {
        if saveData.string(forKey: "sat6CLASSINFO") == nil{
            pageDecider = 40
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 40
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//s7 tapped code
    @IBAction func s7Tapped () {
        if saveData.string(forKey: "sat7CLASSINFO") == nil{
            pageDecider = 41
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 41
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e1 tapped code
    @IBAction func e1Tapped () {
        if saveData.string(forKey: "etc1CLASSINFO") == nil{
            pageDecider = 42
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 42
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e2 tapped code
    @IBAction func e2Tapped () {
        if saveData.string(forKey: "etc2CLASSINFO") == nil{
            pageDecider = 43
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 43
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e3 tapped code
    @IBAction func e3Tapped () {
        if saveData.string(forKey: "etc3CLASSINFO") == nil{
            pageDecider = 44
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 44
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e4 tapped code
    @IBAction func e4Tapped () {
        if saveData.string(forKey: "etc4CLASSINFO") == nil{
            pageDecider = 45
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 45
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e5 tapped code
    @IBAction func e5Tapped () {
        if saveData.string(forKey: "etc5CLASSINFO") == nil{
            pageDecider = 46
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 46
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e6 tapped code
    @IBAction func e6Tapped () {
        if saveData.string(forKey: "etc6CLASSINFO") == nil{
            pageDecider = 47
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 47
            saveData.set( pageDecider,forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "Attendance", sender: nil)
        }
    }
//e7 tapped code
    @IBAction func e7Tapped () {
        if saveData.string(forKey: "etc7CLASSINFO") == nil{
            pageDecider = 48
            saveData.set( pageDecider, forKey: "PAGEDECIDER")
            self.performSegue(withIdentifier: "AddClass", sender: nil)
        }else {
            pageDecider = 48
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
