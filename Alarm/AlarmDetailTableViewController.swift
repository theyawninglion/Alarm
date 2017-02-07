//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {
    
    var alarmPlaceHolder: Alarm?
    
    func updateViews(){
        
        
        
        
        var alarm: Alarm?{
            didSet{
                guard let alarm = alarm else {return}
                datePicker.date = alarm.fireDate?
                nameForAlarmTextField.text = alarm.name
                
                if alarm.enable == true{
                    enableButtonTextField.text = "Disable"
                    enableButtonTextField.backgroundColor = .red
                    enableButtonTextField.textColor = .white
                    
                }else{
                    enableButtonTextField.text = "Enable"
                    enableButtonTextField.backgroundColor = .white
                    enableButtonTextField.textColor = .teal
                }
            }
        }
    }
    
    
    @IBOutlet weak var nameForAlarmTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var enableButtonTextField: UIButton!
    
    
    @IBAction func enableButtonTapped(_ sender: Any) {
        
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        
    }
}
