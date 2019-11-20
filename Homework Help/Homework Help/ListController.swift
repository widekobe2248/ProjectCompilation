//
//  FirstViewController.swift
//  Homework Help
//
//  Created by kjohnson74 on 10/9/18.
//  Copyright © 2018 kjohnson74. All rights reserved.
//


import UIKit

class ListController: UIViewController {
    
    
    @IBOutlet weak var Class1: UILabel!
    @IBOutlet weak var Class2: UILabel!
    @IBOutlet weak var Class3: UILabel!
    @IBOutlet weak var Class4: UILabel!
    @IBOutlet weak var Class5: UILabel!
    @IBOutlet weak var Class6: UILabel!
    @IBOutlet weak var Class7: UILabel!
    @IBOutlet weak var Class8: UILabel!
    @IBOutlet weak var Class9: UILabel!
    @IBOutlet weak var Class10: UILabel!
    
    @IBOutlet weak var Assignment1: UILabel!
    @IBOutlet weak var Assignment2: UILabel!
    @IBOutlet weak var Assignment3: UILabel!
    @IBOutlet weak var Assignment4: UILabel!
    @IBOutlet weak var Assignment5: UILabel!
    @IBOutlet weak var Assignment6: UILabel!
    @IBOutlet weak var Assignment7: UILabel!
    @IBOutlet weak var Assignment8: UILabel!
    @IBOutlet weak var Assignment9: UILabel!
    @IBOutlet weak var Assignment10: UILabel!
    
    @IBOutlet weak var DueDate1: UILabel!
    @IBOutlet weak var DueDate2: UILabel!
    @IBOutlet weak var DueDate3: UILabel!
    @IBOutlet weak var DueDate4: UILabel!
    @IBOutlet weak var DueDate5: UILabel!
    @IBOutlet weak var DueDate6: UILabel!
    @IBOutlet weak var DueDate7: UILabel!
    @IBOutlet weak var DueDate8: UILabel!
    @IBOutlet weak var DueDate9: UILabel!
    @IBOutlet weak var DueDate10: UILabel!
    
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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        Class1.text = Class_1
        Class2.text = Class_2
        Class3.text = Class_3
        Class4.text = Class_4
        Class5.text = Class_5
        Class6.text = Class_6
        Class7.text = Class_7
        Class8.text = Class_8
        Class9.text = Class_9
        Class10.text = Class_10
        
        Assignment1.text = Assignment_1
        Assignment2.text = Assignment_2
        Assignment3.text = Assignment_3
        Assignment4.text = Assignment_4
        Assignment5.text = Assignment_5
        Assignment6.text = Assignment_6
        Assignment7.text = Assignment_7
        Assignment8.text = Assignment_8
        Assignment9.text = Assignment_9
        Assignment10.text = Assignment_10
        
        DueDate1.text = DueDate_1
        DueDate2.text = DueDate_2
        DueDate3.text = DueDate_3
        DueDate4.text = DueDate_4
        DueDate5.text = DueDate_5
        DueDate6.text = DueDate_6
        DueDate7.text = DueDate_7
        DueDate8.text = DueDate_8
        DueDate9.text = DueDate_9
        DueDate10.text = DueDate_10
        
    }
    @IBAction func goToFirstVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
