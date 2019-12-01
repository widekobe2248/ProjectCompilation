//
//  FinalVelocity.swift
//  PhysCal
//
//  Created by kjohnson74 on 1/1/19.
//

import UIKit

class FinalVelocity: UIViewController {
    
    @IBOutlet var FinalVelocity: UITextField!
    @IBOutlet var InitialVelocity: UITextField!
    @IBOutlet var Acceleration: UITextField!
    @IBOutlet var Time: UITextField!
    var Calc1 = 0
    var Calc2 = 0
    var Calc3 = 0
    var Calc4 = 0

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    
    
    func FinalVelCalc()
    {
        //Conversions to Ints for calculations
        let InitialVelocityConv = Double(InitialVelocity.text!)
        let AccelerationConv = Double(Acceleration.text!)
        let TimeConv = Double(Time.text!)
        
        
        //Calculation
        let answer = InitialVelocityConv! + AccelerationConv! * TimeConv!
        
        //Setting the FinalVelocity Textfield to the Answer
        FinalVelocity.text = String(format: "%.2f", answer)
    }
    
    func InitialVelCalc()
    {
        //Conversions to Ints for calculations
        let FinalVelocityConv = Double(FinalVelocity.text!)
        let AccelerationConv = Double(Acceleration.text!)
        let TimeConv = Double(Time.text!)
        
        
        //Calculation
        let answer = FinalVelocityConv! / (AccelerationConv! * TimeConv!)
        
        //Setting the FinalVelocity Textfield to the Answer
        InitialVelocity.text = String(format: "%.2f", answer)
    }
    
    func AccelerationCalc()
    {
        //Conversions to Ints for calculations
        let FinalVelocityConv = Double(FinalVelocity.text!)
        let InitialVelConv = Double(InitialVelocity.text!)
        let TimeConv = Double(Time.text!)
        
        
        //Calculation
        let answer = (FinalVelocityConv! - InitialVelConv!) / TimeConv!
        
        //Setting the FinalVelocity Textfield to the Answer
        Acceleration.text = String(format: "%.2f", answer)
    }
    
    func TimeCalc()
    {
        //Conversions to Ints for calculations
        let FinalVelocityConv = Double(FinalVelocity.text!)
        let InitialVelConv = Double(InitialVelocity.text!)
        let AccelerationConv = Double(Acceleration.text!)
        
        
        //Calculation
        let answer = ((FinalVelocityConv! - InitialVelConv!) / AccelerationConv!)
        
        //Setting the FinalVelocity Textfield to the Answer
        Time.text = String(format: "%.2f", answer)
    }
    
    
    
    @IBAction func ResetCalculate()
    {
        FinalVelocity.text = nil
        InitialVelocity.text = nil
        Acceleration.text = nil
        Time.text = nil
    }
    
    
    
    @IBAction func back() {

        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func calculate()
    {
        
        if FinalVelocity.text!.isEmpty
        {
            Calc1 = 1
        }
        else
        {
            Calc1 = 0
        }
        
        
        if InitialVelocity.text!.isEmpty
        {
            Calc2 = 1
        }
        else
        {
            Calc2 = 0
        }
        
        
        if Acceleration.text!.isEmpty
        {
            Calc3 = 1
        }
        else
        {
            Calc3 = 0
        }
        
        
        if Time.text!.isEmpty
        {
            Calc4 = 1
        }
        else
        {
            Calc4 = 0
        }
        
        print(Calc1)
        print(Calc2)
        print(Calc3)
        print(Calc4)
        
        
        
        
        if Calc1 == 1 && Calc2 == 0 && Calc3 == 0 && Calc4 == 0
        {
            FinalVelCalc()
        }
        else if Calc1 == 0 && Calc2 == 1 && Calc3 == 0 && Calc4 == 0
        {
            InitialVelCalc()
        }
        else if Calc1 == 0 && Calc2 == 0 && Calc3 == 1 && Calc4 == 0
        {
            AccelerationCalc()
        }
        else if Calc1 == 0 && Calc2 == 0 && Calc3 == 0 && Calc4 == 1
        {
            TimeCalc()
        }
        else
        {

            let alert = UIAlertController(title: "Error", message: "Leave One Empty To Solve", preferredStyle: .alert)
            
            //alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        
        
        
        
    
    
    }
    
}
