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
    
    var attNum: Int = 0
    var absNum: Int = 0
    var attRateNum: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func attPlus(){
        attNum = attNum + 1
        att.text = String(attNum)
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
