//
//  TitleViewController.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/06/03.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {
    
    @IBOutlet var quoteLabel: UILabel!
    
    var quotes: [String] = ["“There is only one thing that makes a dream impossible to achieve: the fear of failure.” – Paulo Coelho","“If you really want to do something you’ll find a way, if you don’t you’ll find an excuse.” – Jim Rohn","“Great people, no matter their field, have similar habits. Learn them and use them in your own quest for greatness.” – Paula Andress","“Obstacles are those things you see when you take your eyes off the goal.” – Henry Ford","“Sometimes the best thing you can do is not think, not wonder, not imagine, not obsess. Just breathe and have faith that everything will work out for the best.” – Unknown","“Choose a job you love, & you will never have to work a day in your life. – Confucius","“Great things never came from comfort zones.” – Unknown","“If we don’t change, we don’t grow. If we don’t grow, we aren’t really living.” – Gail Sheehy","“Two things define you. Your patience when you have nothing, your attitude when you have everything.” – Unknown","“STOP looking back!!!! When your past calls do NOT pick up!! it has nothing new to say.” – Rev Run","“You choose the #life you live. If you don’t like it, it’s on you to change it because no one else is going to do it for you.” – Kim Kiyosaki","“The biggest mistake you’ll ever make is letting people stay in your life for longer than they deserve.” – Unknown","“Greatness is not found in possessions, power, position, or prestige. It is discovered in goodness, humility, service, & character.” – WA Ward","“Critical feedback is the breakfast of champions. Defensiveness is the dinner of losers.” – Dharmesh Shah","“Before you dismiss a beginner’s work, remember how much you sucked when you started. You probably sucked worse, actually.” – Jason Fried","“You cannot control everything that happens to you; you can only control the way you respond to what happens. In your response is your power.” – Unknown","“Don’t be pushed by your problems. Be led by your dreams.” – Ralph Waldo Emerson","“You don’t have to be great to start, but you have to start to be great.” – Zig Ziglar","“You have not lived today until you have done something for someone who can never repay you.” – John Bunyan","“Success consists of going from failure to failure without loss of enthusiasm.” – Winston Churchill"]
    let shuffle = (Int)(arc4random_uniform(20))
    var confirmer: Int = 0
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.numberOfLines = 0
        confirmer = shuffle
        quoteLabel.text = quotes[confirmer]
        saveData.set( quotes[confirmer], forKey: "QUOTE")
        // Do any additional setup after loading the view.
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
