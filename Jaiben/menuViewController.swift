//
//  menuViewController.swift
//  Jaiben
//
//  Created by kidnapper on 26/01/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {
    @IBOutlet weak var a: UIStackView!

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var confirmButtonStackView: UIStackView!
    @IBOutlet weak var b: UIStackView!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("______________________")
//        print(confirmButton.bounds)
//        print(confirmButton.layer.bounds)
//        print(confirmButton.center.x)
//        print(confirmButton.center.y)
//        print(confirmButton.frame.origin.x)
//        print(confirmButton.frame.origin.y)

        print("self.view.frame is \(self.view.frame)")
        print(label.frame)
        print("self.view.bounds is \(self.view.bounds)")
        print(a.frame)
        print(b.frame)
        print("confirmButtonStackView.bounds is \(confirmButtonStackView.bounds)")
        print("confirmButtonStackView.frame.origin.x is \(confirmButtonStackView.frame.origin.x)")
        print("confirmButtonStackView.frame.origin.y is \(confirmButtonStackView.frame.origin.y)")
        print("confirmButtonStackView.frame is \(confirmButtonStackView.frame)")
        print(confirmButtonStackView.layer.bounds)
        print(confirmButtonStackView.frame)
        print(confirmButton.layer.bounds)
        print("_________________________________")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {

        super.touchesMoved(touches, withEvent: event)
        
        
        for touch: AnyObject in touches {
            let t: UITouch = touch as! UITouch
            
            let locationPoint: CGPoint = t.locationInView(self.view)
            print("locationPoint is \(locationPoint)")
            
            let realX = (confirmButtonStackView.frame.origin.x)/600*self.view.frame.width
            let realY = (confirmButtonStackView.frame.origin.y)/600*self.view.frame.height
            let realWidth = (confirmButtonStackView.bounds.width)/600*self.view.frame.width
            let realHeigh = (confirmButtonStackView.bounds.width)/600*self.view.frame.height
            
            print("realX is \(realX)")
            print("realY is \(realY)")
            print("self.view.frame is \(self.view.frame)")
            print("confirmButtonStackView.frame is \(confirmButtonStackView.frame)")
            print("confirmButtonStackView.bounds is \(confirmButtonStackView.bounds)")
            
            let confirmButtonStackViewRect = CGRect(x: realX, y: realY, width: realWidth, height: realHeigh)
            
            if (CGRectContainsPoint(confirmButtonStackViewRect, locationPoint)){
                print("!!!!!!!!!")
                
            }else{
                print("touchesEnded | This is not an confirmButtton")
                confirmButton.selected = false
            }
        }
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
