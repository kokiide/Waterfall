//
//  ViewController3.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/30.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet var classNameTF: UITextField!
    @IBOutlet var classRoomTF: UITextField!
    
    var className = ""
    var classRoom = ""
    var classInfo = ""
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveIsTapped() {
    
        className = classRoomTF.text!
        classRoom = classRoomTF.text!
        classInfo = className + classRoom
        
        saveData.set(classInfo, forKey: "CLASSINFO")
    }

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
