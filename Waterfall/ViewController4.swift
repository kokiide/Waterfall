//
//  ViewController3.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/30.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet var m2classNameTF: UITextField!
    @IBOutlet var m2classRoomTF: UITextField!
    
    var m2className = ""
    var m2classRoom = ""
    var m2classInfo = ""
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveIsTapped() {
        
        m2className = m2classNameTF.text!
        m2classRoom = m2classRoomTF.text!
        if m2classRoom.isEmpty {
            m2classInfo = m2className
            saveData.set(m2classInfo, forKey: "m2CLASSINFO")
            self.performSegue(withIdentifier: "toTablem2", sender: nil)
        }else {
        m2classInfo = m2className + " [" + m2classRoom + "]"
        
        saveData.set(m2classInfo, forKey: "m2CLASSINFO")
        self.performSegue(withIdentifier: "toTablem2", sender: nil)
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
