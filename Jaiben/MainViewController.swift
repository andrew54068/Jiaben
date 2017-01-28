//
//  MainViewController.swift
//  Jaiben
//
//  Created by kidnapper on 21/01/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var blurEffectView: UIVisualEffectView?
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        if segue.identifier == "unwindMenu"{
            let destinationViewController = segue.destinationViewController as! MainViewController
            destinationViewController.blurEffectView!.removeFromSuperview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //設定背景漸層
        let color1 = UIColor(red: 238/255, green: 110/255, blue: 73/255, alpha: 1)
        let color2 = UIColor(red: 238/255, green: 158/255, blue: 73/255, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.startPoint = CGPoint(x: 0,y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.insertSublayer(gradient, atIndex: 0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMenu" {
            let sourceViewController = segue.sourceViewController as! MainViewController
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView?.frame = self.view.bounds
            sourceViewController.view.addSubview(blurEffectView!)
            sourceViewController.view.bringSubviewToFront(blurEffectView!)
        }
    }

    

}

