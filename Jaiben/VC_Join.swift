//
//  VC_Join.swift
//  Jaiben
//
//  Created by kidnapper on 18/02/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class VC_Join: VC_Base {

    var keyboardShowAlready: Bool = false
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.nameTextField.delegate = self
        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(VC_Join.keyboardWillShow), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(VC_Join.keyboardWillHide), name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification) {
        guard keyboardShowAlready else{
            adjustingHightLight(true, notification: notification)
            keyboardShowAlready = true
            return
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        adjustingHightLight(false, notification: notification)
        keyboardShowAlready = false
    }
    func adjustingHightLight(show: Bool, notification: NSNotification) {
        let userInfo = notification.userInfo!
        
        let keyboardFrame: CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
//        print("userInfo[UIKeyboardFrameBeginUserInfoKey] is \(userInfo[UIKeyboardFrameBeginUserInfoKey])")
//        print("userInfo[UIKeyboardFrameBeginUserInfoKey]'s type is \(userInfo[UIKeyboardFrameBeginUserInfoKey].dynamicType)")
        
//        let animationDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSTimeInterval
        let changeInHeight = (CGRectGetHeight(keyboardFrame) + 20) * (show ? 1 : -1)
        //        print("changeInHeight.dynamicType is \(changeInHeight.dynamicType)")
        //
        //        print("changeInHeight is \(changeInHeight)")
        scrollView.contentInset.bottom += changeInHeight
        scrollView.scrollIndicatorInsets.bottom += changeInHeight

//        print("first \(self.scrollView.contentInset.bottom)")
//        print("first-2 \(self.scrollView.scrollIndicatorInsets.bottom)")
//        var screenRect = self.view.frame
//        screenRect.size.height -= keyboardFrame.size.height
//        if !CGRectContainsRect(screenRect, textFieldFrame){
//            let distance = textFieldFrame.maxY - screenRect.maxY
//            let changeInHeight = distance * (show ? -1 : 1)
//            self.scrollView.contentInset.bottom += changeInHeight
//            self.scrollView.scrollIndicatorInsets.bottom += keyboardFrame.size.height
//            print("distance is \(distance)")
//            print("second \(self.scrollView.contentInset.bottom)")
//            print("second-2 \(self.scrollView.scrollIndicatorInsets.bottom)")
//        }
//        
//        print(screenRect)
//        print(textFieldFrame)
        
//        UIView.animateWithDuration(animationDuration * 1.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.3, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
        
//    }, completion: nil)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
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
