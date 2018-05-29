//
//  SettingsViewController.swift
//  GeoCalcApp
//
//  Created by Brian on 5/28/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit

protocol SettingsSelectionControllerDelegate {
    func indicateSelection(settings: String)
}

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData: [String] = [String]()
    var selection : String = "Degrees"
    var delegate : SettingsSelectionControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.pickerData = ["Degrees", "Radians"]
        self.picker.delegate = self
        self.picker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SettingsViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    // The number of columsn of data
    func numberOfComponents(in: UIPickerView) -> Int
    {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selection = self.pickerData[row]
    }
}


