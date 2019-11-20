//
//  AddAssignmentController.swift
//  Homework Help
//
//  Created by kjohnson74 on 10/10/18.
//  Copyright © 2018 kjohnson74. All rights reserved.
//

import UIKit
class MenuController: UIViewController {
    var Class_1: String = "Class 1:"
    var Class_2: String? = "Class 2:"
    var Class_3: String? = "Class 3:"
    var Class_4: String? = "Class 4:"
    var Class_5: String? = "Class 5:"
    var Class_6: String? = "Class 6:"
    var Class_7: String? = "Class 7:"
    var Class_8: String? = "Class 8:"
    var Class_9: String? = "Class 9:"
    var Class_10: String? = "Class 10:"
    
    
    var Assignment_1: String? = "None"
    var Assignment_2: String? = "None"
    var Assignment_3: String? = "None"
    var Assignment_4: String? = "None"
    var Assignment_5: String? = "None"
    var Assignment_6: String? = "None"
    var Assignment_7: String? = "None"
    var Assignment_8: String? = "None"
    var Assignment_9: String? = "None"
    var Assignment_10: String? = "None"
    
    var DueDate_1: String? = "None"
    var DueDate_2: String? = "None"
    var DueDate_3: String? = "None"
    var DueDate_4: String? = "None"
    var DueDate_5: String? = "None"
    var DueDate_6: String? = "None"
    var DueDate_7: String? = "None"
    var DueDate_8: String? = "None"
    var DueDate_9: String? = "None"
    var DueDate_10: String? = "None"
    


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
    

    @IBAction func toList(sender: UIButton) {
        
        
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListController") as! ListController
        
        vc.Class_1 = Class_1
        vc.Class_2 = Class_2
        vc.Class_3 = Class_3
        vc.Class_4 = Class_4
        vc.Class_5 = Class_5
        vc.Class_6 = Class_6
        vc.Class_7 = Class_7
        vc.Class_8 = Class_8
        vc.Class_9 = Class_9
        vc.Class_10 = Class_10
        
        vc.Assignment_1 = Assignment_1
        vc.Assignment_2 = Assignment_2
        vc.Assignment_3 = Assignment_3
        vc.Assignment_4 = Assignment_4
        vc.Assignment_5 = Assignment_5
        vc.Assignment_6 = Assignment_6
        vc.Assignment_7 = Assignment_7
        vc.Assignment_8 = Assignment_8
        vc.Assignment_9 = Assignment_9
        vc.Assignment_10 = Assignment_10
        
        vc.DueDate_1 = DueDate_1
        vc.DueDate_2 = DueDate_2
        vc.DueDate_3 = DueDate_3
        vc.DueDate_4 = DueDate_4
        vc.DueDate_5 = DueDate_5
        vc.DueDate_6 = DueDate_6
        vc.DueDate_7 = DueDate_7
        vc.DueDate_8 = DueDate_8
        vc.DueDate_9 = DueDate_9
        vc.DueDate_10 = DueDate_10
        
        
        present(vc, animated: true, completion: nil)
    }
    
    
}
