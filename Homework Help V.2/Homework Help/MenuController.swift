//
//  AddAssignmentController.swift
//  Homework Help
//
//  Created by kjohnson74 on 10/10/18.
//  Copyright © 2018 kjohnson74. All rights reserved.
//

import UIKit
class MenuController: UIViewController {
    
    
    
    var Class_1: String? = "Class 1:"
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
    
    var DueDate_1: String = "None"
    var DueDate_2: String? = "None"
    var DueDate_3: String? = "None"
    var DueDate_4: String? = "None"
    var DueDate_5: String? = "None"
    var DueDate_6: String? = "None"
    var DueDate_7: String? = "None"
    var DueDate_8: String? = "None"
    var DueDate_9: String? = "None"
    var DueDate_10: String? = "None"
    
    

    
    //var DueDates String = []



    override func viewDidLoad() {
        super.viewDidLoad()
        //var DueDates = [DueDate_1, DueDate_2, DueDate_3]
    }
    
    
    func iSEmptyNone(variable: String) -> Bool{
        
        if variable == "None" {
            return true
            //let variable = textField.text!
        }
        else {
            return false
            
        }
        
    }
    
    func iSEmptyClass(variable: String, detector: String) -> Bool {
        if variable == detector {
            return true
            //let variable = textField.text!
        }
        else {
            return false
            
        }
    }
    /*
    func testingClass(destination: ClassController)
    {
        
      let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ClassController") as! ClassController
        for (index,variable) in DueDates.enumerated()
        {
            if iSEmptyClass(variable: variable as! String, detector: "Class, \(index + 1): ") == true{
                let temp = variable
                vc.temp = ""
            }
            else
            {
                vc.variable = variable
            }
            
            
            
        }
        
        
    }
*/
    
     @IBAction func toEdit(_ sender: UIButton) {
        
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ClassController") as! ClassController
        
        //testingClass(destination: vc)



        //Changes For Classes
        if iSEmptyClass(variable: Class_1!, detector: "Class 1:") == true
        {
            
                vc.Class_1 = ""
        }
        else
        {
                vc.Class_1 = Class_1
        }
        
        
        if iSEmptyClass(variable: Class_2!, detector: "Class 2:") == true
        {
            
            vc.Class_2 = ""
        }
        else
        {
            vc.Class_2 = Class_2
        }
        
        
        if iSEmptyClass(variable: Class_3!, detector: "Class 3:") == true
        {
            
            vc.Class_3 = ""
        }
        else
        {
            vc.Class_3 = Class_3
        }
        
        if iSEmptyClass(variable: Class_4!, detector: "Class 4:") == true
        {
            
            vc.Class_4 = ""
        }
        else
        {
            vc.Class_4 = Class_4
        }
        
        if iSEmptyClass(variable: Class_5!, detector: "Class 5:") == true
        {
            
            vc.Class_5 = ""
        }
        else
        {
            vc.Class_5 = Class_5
        }
        
        if iSEmptyClass(variable: Class_6!, detector: "Class 6:") == true
        {
            
            vc.Class_6 = ""
        }
        else
        {
            vc.Class_6 = Class_6
        }
        
        if iSEmptyClass(variable: Class_7!, detector: "Class 7:") == true
        {
            
            vc.Class_7 = ""
        }
        else
        {
            vc.Class_7 = Class_7
        }
        
        if iSEmptyClass(variable: Class_8!, detector: "Class 8:") == true
        {
            
            vc.Class_8 = ""
        }
        else
        {
            vc.Class_8 = Class_8
        }
        
        if iSEmptyClass(variable: Class_9!, detector: "Class 9:") == true
        {
            
            vc.Class_9 = ""
        }
        else
        {
            vc.Class_9 = Class_9
        }
        
        if iSEmptyClass(variable: Class_10!, detector: "Class 10:") == true
        {
            
            vc.Class_10 = ""
        }
        else
        {
            vc.Class_10 = Class_10
        }
        
        
        
        //Changes for Assignments
        if iSEmptyNone(variable: Assignment_1!) == true
        {
            vc.Assignment_1 = ""
        }
        else
        {
            vc.Assignment_1 = Assignment_1
        }
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
    
    @IBAction func toInfo(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InfoController") as! InfoController
        present(vc, animated: true, completion: nil)
        
    }
    
    
    
    //Is empty function to test if the presenting menu screen is empty, and if it is then to keep the default text there
    

    

    

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
