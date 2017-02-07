//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {
    
    let alarm: Alarm?
    
    private  func updateViews()
    
    
    @IBOutlet weak var nameForAlarmTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var enableButtonTextField: UIButton!
    
    
    @IBAction func enableButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        
    }
}
