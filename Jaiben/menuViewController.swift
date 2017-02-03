//
//  menuViewController.swift
//  Jaiben
//
//  Created by kidnapper on 26/01/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {


//    func confirmButtonAction() {
//        
//        dismissViewControllerAnimated(true, completion: nil)
//        
//    }

    @IBOutlet var confirmButton: newButton!
    var counter: Int! = 1
//    @IBOutlet weak var confirmButton: buttonControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(confirmButton.buttonType)
        print("String(confirmbutton.dynamicType) is \(confirmButton.dynamicType)")
//        confirmButton.addTarget(self, action: #selector(confirmButtonAction), forControlEvents: .TouchUpInside)
//        self.confirmButton.addTarget(self.confirmButton, action: Selector("onButtonTap:"), forControlEvents: .TouchUpInside)
        print("______________________")
//        print(confirmButton.layer.bounds)
        print("_________________________________")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func continueTrackingWithTouchUp(btuTouchUp: UIButton,with touches: Set<UITouch>){
//        print(counter)
//        for t: AnyObject in touches{
//            let touch = t as! UITouch
//            let touchOutside = !CGRectContainsPoint(btuTouchUp.bounds, touch.locationInView(self.view))
//            if touchOutside {
//                let previousTochInside = CGRectContainsPoint(btuTouchUp.bounds, touch.previousLocationInView(self.view))
//                if previousTochInside {
//                    print("Sending UIControlEventTouchDragExit")
//                    btuTouchUp.sendActionsForControlEvents(.TouchDragExit)
//                    btuTouchUp.highlighted = false
//                    btuTouchUp.selected = false
//                }else{
//                    print("Sending UIControlEventTouchDragOutside")
//                    btuTouchUp.sendActionsForControlEvents(.TouchDragOutside)
//                }
//            }else{
//                let previousTouchOutside = !CGRectContainsPoint(btuTouchUp.bounds, touch.previousLocationInView(self.view))
//                if previousTouchOutside{
//                    print("Sending UIControlEventTouchDragEnter")
//                    btuTouchUp.sendActionsForControlEvents(.TouchDragEnter)
//                }else{
//                    print("Sending UIControlEventTouchDragInside")
//                    btuTouchUp.sendActionsForControlEvents(.TouchUpInside)
//                }
//                
//            }
//        }
//    }
    

    
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//
//        super.touchesMoved(touches, withEvent: event)
//        
//        
//        for touch: AnyObject in touches {
//            let t: UITouch = touch as! UITouch
//            
//            let locationPoint: CGPoint = t.locationInView(self.view)
//            print("locationPoint is \(locationPoint)")
//            
////            let realX = (confirmButtonStackView.frame.origin.x)/600*self.view.frame.width
////            let realY = (confirmButtonStackView.frame.origin.y)/600*self.view.frame.height
////            let realWidth = (confirmButtonStackView.bounds.width)/600*self.view.frame.width
////            let realHeigh = (confirmButtonStackView.bounds.width)/600*self.view.frame.height
//            print("confirmButton.frame is \(confirmButton.frame)")
//            print("label.frame is \(label.frame)")
//            print("self.view.frame is \(self.view.frame)")
//            print("confirmButtonStackView.frame is \(confirmButtonStackView.frame)")
//            print("confirmButtonStackView.bounds is \(confirmButtonStackView.bounds)")
//            
//            let confirmButtonStackViewRect = CGRect(x: confirmButtonStackView.frame.origin.x, y: confirmButtonStackView.frame.origin.y, width: confirmButtonStackView.bounds.width, height: confirmButtonStackView.bounds.height)
//            
//            if (CGRectContainsPoint(confirmButtonStackViewRect, locationPoint)){
//                print("!!!!!!!!!")
////                confirmButton.touchesCancelled
//                
//            }else{
//                print("touchesEnded | This is not an confirmButtton")
//                confirmButton.selected = false
//                confirmButton.highlighted = false
//                
//            }
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
