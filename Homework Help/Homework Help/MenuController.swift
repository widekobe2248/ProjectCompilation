//
//  AddAssignmentController.swift
//  Homework Help
//
//  Created by kjohnson74 on 10/10/18.
//  Copyright © 2018 kjohnson74. All rights reserved.
//

import UIKit
class MenuController: UIViewController {
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
     @IBAction func toEdit(_ sender: UIButton) {
        
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ClassController") as! ClassController
        present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func toInfo(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InfoController") as! InfoController
        present(vc, animated: true, completion: nil)
        
    }
    
    
    
    //Is empty function to test if the presenting menu screen is empty, and if it is then to keep the default text there
    
    func iSEmpty(textField: UITextField, variable: String) -> Bool{
        
        if textField.text != "" {
            return true
            //let variable = textField.text!
        }
        else {
            print("Please enter any data in textField to pass the data from current vc to next vc")
            return false
            
        }
        
    }
    

    
    
}
