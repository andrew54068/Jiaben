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
