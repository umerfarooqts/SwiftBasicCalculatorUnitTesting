//
//  ViewController.swift
//  BasicCalculatorUnitTesting
//
//  Created by Umer Farooq on 22/11/2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var selectedOperator = "+"
    @IBOutlet weak var txt_value1: UITextField!
    @IBOutlet weak var txt_value2: UITextField!
    @IBOutlet weak var lbl_results: UILabel!
    
    @IBOutlet weak var OperatorPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
 
    @IBAction func btn_calculate(_ sender: UIButton) {
        
        
        let string1 = txt_value1.text?.trimmingCharacters(in: .whitespaces);
        let string2 = txt_value2.text?.trimmingCharacters(in: .whitespaces);
        
        if (string1?.count == 0 || string2?.count == 0) {return}
        
        let value1 = Double(string1!);
        let value2 = Double(string2!);
        
        if selectedOperator == "+" {
            //Add two numbers
            let result = CalculatorModel.Add(x: value1!, y: value2!);
            lbl_results.text = String(result);
        }
        if selectedOperator == "-" {
            //Subtract two numbers
            let result = CalculatorModel.Subtract(x: value1!, y: value2!);
            lbl_results.text = String(result);
        }
        if selectedOperator == "*" {
            //Multiply two numbers
            let result = CalculatorModel.Multiply(x: value1!, y: value2!);
            lbl_results.text = String(result);
        }
        if selectedOperator == "/" {
            //Divide two numbers
            if let result = CalculatorModel.Divide(x: value1!, y: value2!) {
                lbl_results.text = String(result);
            } else {
                lbl_results.text = "∞";
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Connect data:
        self.OperatorPicker.delegate = self;
        self.OperatorPicker.dataSource = self;
        
        // Input the data into the array
        pickerData = ["+", "-", "*", "/"];
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedOperator = pickerData[row];
        return pickerData[row];
    }
}



