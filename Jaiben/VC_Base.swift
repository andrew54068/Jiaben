//
//  VC_Base.swift
//  Jaiben
//
//  Created by kidnapper on 11/02/2017.
//  Copyright © 2017 JaiBen. All rights reserved.
//

import UIKit

class VC_Base: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //gradien Background
        let color1 = UIColor(red: 238/255, green: 110/255, blue: 73/255, alpha: 1)
        let color2 = UIColor(red: 238/255, green: 158/255, blue: 73/255, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height * 1.3)
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.startPoint = CGPoint(x: 0,y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1.2)
        self.view.layer.insertSublayer(gradient, atIndex: 0)
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(VC_Base.keyboardWillShow), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(VC_Base.keyboardWillHide), name: UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    func keyboardWillShow(notification: NSNotification) {
        adjustingHightLight(true, notification: notification)
    }

    func keyboardWillHide(notification: NSNotification) {
        adjustingHightLight(false, notification: notification)
    }
    func adjustingHightLight(show: Bool, notification: NSNotification) {
        var userInfo = notification.userInfo!
        let keyboardFrame: CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        let animationDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSTimeInterval
        let changeInHeight = (CGRectGetHeight(keyboardFrame) + 20) * (show ? 1 : -1)
        UIView.animateWithDuration(animationDuration, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.view.bounds.offsetInPlace(dx: 0, dy: changeInHeight)}, completion: nil)
        print("1234")
    }
    
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        print("321")
//        return true
//    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func textViewShouldEndEditing(textView: UITextView) -> Bool {
//        textView.resignFirstResponder()
//        return true
//    }
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return true
//    }

//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        self.view.endEditing(true)
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
