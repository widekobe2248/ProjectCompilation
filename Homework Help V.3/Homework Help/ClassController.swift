//
//  SecondViewController.swift
//  Homework Help
//
//  Created by kjohnson74 on 10/9/18.
//  Copyright © 2018 kjohnson74. All rights reserved.
//

import UIKit

class ClassController: UIViewController {
    
    
    //Function used later to determine if the text field is empty
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
    
    
    //List of vars for transferring data
    var Class_1: String? = ""
    var Class_2: String? = ""
    var Class_3: String? = ""
    var Class_4: String? = ""
    var Class_5: String? = ""
    var Class_6: String? = ""
    var Class_7: String? = ""
    var Class_8: String? = ""
    var Class_9: String? = ""
    var Class_10: String? = ""
    
    var Assignment_1: String? = ""
    var Assignment_2: String? = ""
    var Assignment_3: String? = ""
    var Assignment_4: String? = ""
    var Assignment_5: String? = ""
    var Assignment_6: String? = ""
    var Assignment_7: String? = ""
    var Assignment_8: String? = ""
    var Assignment_9: String? = ""
    var Assignment_10: String? = ""
    
    var DueDate_1: String? = ""
    var DueDate_2: String? = ""
    var DueDate_3: String? = ""
    var DueDate_4: String? = ""
    var DueDate_5: String? = ""
    var DueDate_6: String? = ""
    var DueDate_7: String? = ""
    var DueDate_8: String? = ""
    var DueDate_9: String? = ""
    var DueDate_10: String? = ""
    
    
    @IBOutlet weak var Class1: UITextField!
    @IBOutlet weak var Class2: UITextField!
    @IBOutlet weak var Class3: UITextField!
    @IBOutlet weak var Class4: UITextField!
    @IBOutlet weak var Class5: UITextField!
    @IBOutlet weak var Class6: UITextField!
    @IBOutlet weak var Class7: UITextField!
    @IBOutlet weak var Class8: UITextField!
    @IBOutlet weak var Class9: UITextField!
    @IBOutlet weak var Class10: UITextField!
    
    @IBOutlet weak var Assignment1: UITextField!
    @IBOutlet weak var Assignment2: UITextField!
    @IBOutlet weak var Assignment3: UITextField!
    @IBOutlet weak var Assignment4: UITextField!
    @IBOutlet weak var Assignment5: UITextField!
    @IBOutlet weak var Assignment6: UITextField!
    @IBOutlet weak var Assignment7: UITextField!
    @IBOutlet weak var Assignment8: UITextField!
    @IBOutlet weak var Assignment9: UITextField!
    @IBOutlet weak var Assignment10: UITextField!
    
    @IBOutlet weak var DueDate1: UITextField!
    @IBOutlet weak var DueDate2: UITextField!
    @IBOutlet weak var DueDate3: UITextField!
    @IBOutlet weak var DueDate4: UITextField!
    @IBOutlet weak var DueDate5: UITextField!
    @IBOutlet weak var DueDate6: UITextField!
    @IBOutlet weak var DueDate7: UITextField!
    @IBOutlet weak var DueDate8: UITextField!
    @IBOutlet weak var DueDate9: UITextField!
    @IBOutlet weak var DueDate10: UITextField!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListController") as! ListController
        
  
        //Uses the check empty function and transfers the data
        
        //Classes
        if iSEmpty(textField: Class1, variable: Class_1!) == true {
            vc.Class_1 = Class1.text!
            print("It is not empty")
        }
        else {
            vc.Class_1 = "Class 1:"
        }

        
        if iSEmpty(textField: Class2, variable: Class_2!) == true {
            vc.Class_2 = Class2.text!
            print("It is not empty")
        }
        else {
            vc.Class_2 = "Class 2:"
        }

        
        if iSEmpty(textField: Class3, variable: Class_3!) == true {
            vc.Class_3 = Class3.text!
            print("It is not empty")
        }
        else {
            vc.Class_3 = "Class 3:"
        }
        
        if iSEmpty(textField: Class4, variable: Class_4!) == true {
            vc.Class_4 = Class4.text!
            print("It is not empty")
        }
        else {
            vc.Class_4 = "Class 4:"
        }
        
        if iSEmpty(textField: Class5, variable: Class_5!) == true {
            vc.Class_5 = Class5.text!
            print("It is not empty")
        }
        else {
            vc.Class_5 = "Class 5:"
        }
        
        if iSEmpty(textField: Class6, variable: Class_6!) == true {
            vc.Class_6 = Class6.text!
            print("It is not empty")
        }
        else {
            vc.Class_6 = "Class 6:"
        }
        
        if iSEmpty(textField: Class7, variable: Class_7!) == true {
            vc.Class_7 = Class7.text!
            print("It is not empty")
        }
        else {
            vc.Class_7 = "Class 7:"
        }
        
        if iSEmpty(textField: Class8, variable: Class_8!) == true {
            vc.Class_8 = Class8.text!
            print("It is not empty")
        }
        else {
            vc.Class_8 = "Class 8:"
        }
        
        if iSEmpty(textField: Class9, variable: Class_9!) == true {
            vc.Class_9 = Class9.text!
            print("It is not empty")
        }
        else {
            vc.Class_9 = "Class 9:"
        }
        
        if iSEmpty(textField: Class10, variable: Class_10!) == true {
            vc.Class_10 = Class10.text!
            print("It is not empty")
        }
        else {
            vc.Class_10 = "Class 10:"
        }

        
        //Assignemnts
        if iSEmpty(textField: Assignment1, variable: Assignment_1!) == true {
            vc.Assignment_1 = Assignment1.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_1 = "None"
        }
        
        if iSEmpty(textField: Assignment2, variable: Assignment_2!) == true {
            vc.Assignment_2 = Assignment2.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_2 = "None"
        }
        
        if iSEmpty(textField: Assignment3, variable: Assignment_3!) == true {
            vc.Assignment_3 = Assignment3.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_3 = "None"
        }
        
        if iSEmpty(textField: Assignment4, variable: Assignment_4!) == true {
            vc.Assignment_4 = Assignment4.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_4 = "None"
        }
        
        if iSEmpty(textField: Assignment5, variable: Assignment_5!) == true {
            vc.Assignment_5 = Assignment5.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_5 = "None"
        }
        
        if iSEmpty(textField: Assignment6, variable: Assignment_6!) == true {
            vc.Assignment_6 = Assignment6.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_6 = "None"
        }
        
        if iSEmpty(textField: Assignment7, variable: Assignment_7!) == true {
            vc.Assignment_7 = Assignment7.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_7 = "None"
        }
        
        if iSEmpty(textField: Assignment8, variable: Assignment_8!) == true {
            vc.Assignment_8 = Assignment8.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_8 = "None"
        }
        
        if iSEmpty(textField: Assignment9, variable: Assignment_9!) == true {
            vc.Assignment_9 = Assignment9.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_9 = "None"
        }
        
        if iSEmpty(textField: Assignment10, variable: Assignment_10!) == true {
            vc.Assignment_10 = Assignment10.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_10 = "None"
        }
        
        
        //Due Date
        
        if iSEmpty(textField: DueDate1, variable: DueDate_1!) == true {
            vc.DueDate_1 = DueDate1.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_1 = "None"
        }
        
        if iSEmpty(textField: DueDate2, variable: DueDate_2!) == true {
            vc.DueDate_2 = DueDate2.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_2 = "None"
        }
        
        if iSEmpty(textField: DueDate3, variable: DueDate_3!) == true {
            vc.DueDate_3 = DueDate3.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_3 = "None"
        }
        
        if iSEmpty(textField: DueDate4, variable: DueDate_4!) == true {
            vc.DueDate_4 = DueDate4.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_4 = "None"
        }
        
        if iSEmpty(textField: DueDate5, variable: DueDate_5!) == true {
            vc.DueDate_5 = DueDate5.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_5 = "None"
        }
        
        if iSEmpty(textField: DueDate6, variable: DueDate_6!) == true {
            vc.DueDate_6 = DueDate6.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_6 = "None"
        }
        
        if iSEmpty(textField: DueDate7, variable: DueDate_7!) == true {
            vc.DueDate_7 = DueDate7.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_7 = "None"
        }
        
        if iSEmpty(textField: DueDate8, variable: DueDate_8!) == true {
            vc.DueDate_8 = DueDate8.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_8 = "None"
        }
        
        if iSEmpty(textField: DueDate9, variable: DueDate_9!) == true {
            vc.DueDate_9 = DueDate9.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_9 = "None"
        }
        
        if iSEmpty(textField: DueDate10, variable: DueDate_10!) == true {
            vc.DueDate_10 = DueDate10.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_10 = "None"
        }

        
        
        
        
        
        present(vc, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func goBack(_ sender: UIButton) {
        
        
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MenuController") as! MenuController
        
        
        //Uses the check empty function and transfers the data
        
        //Classes
        if iSEmpty(textField: Class1, variable: Class_1!) == true {
            vc.Class_1 = Class1.text!
            print("It is not empty")
        }
        else {
            vc.Class_1 = "Class 1:"
        }
        
        
        if iSEmpty(textField: Class2, variable: Class_2!) == true {
            vc.Class_2 = Class2.text!
            print("It is not empty")
        }
        else {
            vc.Class_2 = "Class 2:"
        }
        
        
        if iSEmpty(textField: Class3, variable: Class_3!) == true {
            vc.Class_3 = Class3.text!
            print("It is not empty")
        }
        else {
            vc.Class_3 = "Class 3:"
        }
        
        if iSEmpty(textField: Class4, variable: Class_4!) == true {
            vc.Class_4 = Class4.text!
            print("It is not empty")
        }
        else {
            vc.Class_4 = "Class 4:"
        }
        
        if iSEmpty(textField: Class5, variable: Class_5!) == true {
            vc.Class_5 = Class5.text!
            print("It is not empty")
        }
        else {
            vc.Class_5 = "Class 5:"
        }
        
        if iSEmpty(textField: Class6, variable: Class_6!) == true {
            vc.Class_6 = Class6.text!
            print("It is not empty")
        }
        else {
            vc.Class_6 = "Class 6:"
        }
        
        if iSEmpty(textField: Class7, variable: Class_7!) == true {
            vc.Class_7 = Class7.text!
            print("It is not empty")
        }
        else {
            vc.Class_7 = "Class 7:"
        }
        
        if iSEmpty(textField: Class8, variable: Class_8!) == true {
            vc.Class_8 = Class8.text!
            print("It is not empty")
        }
        else {
            vc.Class_8 = "Class 8:"
        }
        
        if iSEmpty(textField: Class9, variable: Class_9!) == true {
            vc.Class_9 = Class9.text!
            print("It is not empty")
        }
        else {
            vc.Class_9 = "Class 9:"
        }
        
        if iSEmpty(textField: Class10, variable: Class_10!) == true {
            vc.Class_10 = Class10.text!
            print("It is not empty")
        }
        else {
            vc.Class_10 = "Class 10:"
        }
        
        
        //Assignemnts
        if iSEmpty(textField: Assignment1, variable: Assignment_1!) == true {
            vc.Assignment_1 = Assignment1.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_1 = "None"
        }
        
        if iSEmpty(textField: Assignment2, variable: Assignment_2!) == true {
            vc.Assignment_2 = Assignment2.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_2 = "None"
        }
        
        if iSEmpty(textField: Assignment3, variable: Assignment_3!) == true {
            vc.Assignment_3 = Assignment3.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_3 = "None"
        }
        
        if iSEmpty(textField: Assignment4, variable: Assignment_4!) == true {
            vc.Assignment_4 = Assignment4.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_4 = "None"
        }
        
        if iSEmpty(textField: Assignment5, variable: Assignment_5!) == true {
            vc.Assignment_5 = Assignment5.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_5 = "None"
        }
        
        if iSEmpty(textField: Assignment6, variable: Assignment_6!) == true {
            vc.Assignment_6 = Assignment6.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_6 = "None"
        }
        
        if iSEmpty(textField: Assignment7, variable: Assignment_7!) == true {
            vc.Assignment_7 = Assignment7.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_7 = "None"
        }
        
        if iSEmpty(textField: Assignment8, variable: Assignment_8!) == true {
            vc.Assignment_8 = Assignment8.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_8 = "None"
        }
        
        if iSEmpty(textField: Assignment9, variable: Assignment_9!) == true {
            vc.Assignment_9 = Assignment9.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_9 = "None"
        }
        
        if iSEmpty(textField: Assignment10, variable: Assignment_10!) == true {
            vc.Assignment_10 = Assignment10.text!
            print("It is not empty")
        }
        else {
            vc.Assignment_10 = "None"
        }
        
        
        //Due Date
        
        if iSEmpty(textField: DueDate1, variable: DueDate_1!) == true {
            vc.DueDate_1 = DueDate1.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_1 = "None"
        }
        
        if iSEmpty(textField: DueDate2, variable: DueDate_2!) == true {
            vc.DueDate_2 = DueDate2.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_2 = "None"
        }
        
        if iSEmpty(textField: DueDate3, variable: DueDate_3!) == true {
            vc.DueDate_3 = DueDate3.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_3 = "None"
        }
        
        if iSEmpty(textField: DueDate4, variable: DueDate_4!) == true {
            vc.DueDate_4 = DueDate4.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_4 = "None"
        }
        
        if iSEmpty(textField: DueDate5, variable: DueDate_5!) == true {
            vc.DueDate_5 = DueDate5.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_5 = "None"
        }
        
        if iSEmpty(textField: DueDate6, variable: DueDate_6!) == true {
            vc.DueDate_6 = DueDate6.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_6 = "None"
        }
        
        if iSEmpty(textField: DueDate7, variable: DueDate_7!) == true {
            vc.DueDate_7 = DueDate7.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_7 = "None"
        }
        
        if iSEmpty(textField: DueDate8, variable: DueDate_8!) == true {
            vc.DueDate_8 = DueDate8.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_8 = "None"
        }
        
        if iSEmpty(textField: DueDate9, variable: DueDate_9!) == true {
            vc.DueDate_9 = DueDate9.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_9 = "None"
        }
        
        if iSEmpty(textField: DueDate10, variable: DueDate_10!) == true {
            vc.DueDate_10 = DueDate10.text!
            print("It is not empty")
        }
        else {
            vc.DueDate_10 = "None"
        }
        
        
        
        
        
        
        present(vc, animated: true, completion: nil)
    }
    
    
}

