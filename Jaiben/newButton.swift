//
//  buttonControl.swift
//  Jaiben
//
//  Created by kidnapper on 01/02/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class newButton: UIButton {
    override func continueTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool {
        print("here")
        let touchOutside = !CGRectContainsPoint(self.bounds, touch.locationInView(self))
        print(touch.locationInView(self))
        print(touch.previousLocationInView(self))
        guard !touchOutside else{
            self.highlighted = false
            return false
        }
//        if touchOutside {
//            let previousTochInside = CGRectContainsPoint(self.bounds, touch.previousLocationInView(self))
//            if previousTochInside {
//                print("Sending UIControlEventTouchDragExit")
//                self.sendActionsForControlEvents(.TouchDragExit)
//                self.highlighted = false
//                self.cancelTrackingWithEvent(event)
//            }else{
//                print("Sending UIControlEventTouchDragOutside")
//                self.sendActionsForControlEvents(.TouchDragOutside)
//                self.highlighted = false
////                endTrackingWithTouch(touch, withEvent: event)
////                return true
//                self.cancelTrackingWithEvent(event)
//            }
//        }else{
//            let previousTouchOutside = !CGRectContainsPoint(self.bounds, touch.previousLocationInView(self))
//            if previousTouchOutside{
//                print("Sending UIControlEventTouchDragEnter")
////                self.sendActionsForControlEvents(.TouchDragEnter)
////                self.highlighted = true
////                return true
//            }else{
//                print("Sending UIControlEventTouchDragInside")
////                self.sendActionsForControlEvents(.TouchUpInside)
////                return true
//            }
//        }
        return true
    }
}
