//
//  outcomeViewController.swift
//  Jaiben
//
//  Created by kidnapper on 10/02/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class outcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let color1 = UIColor(red: 238/255, green: 110/255, blue: 73/255, alpha: 1)
        let color2 = UIColor(red: 238/255, green: 158/255, blue: 73/255, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.startPoint = CGPoint(x: 0,y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.insertSublayer(gradient, atIndex: 0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
