//
//  AlarmController.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import Foundation

class AlarmController{
    
    static let sharedController = AlarmController()
    
    var alarmsArray: [Alarm]
    
    func switchEnabled(for alarm: Alarm){
        if alarm.enable == true{
            alarm.enable = false
        }else{
            alarm.enable = true
        }
    }
    
    
    func addNewAlarm(fireTimeFromMidnight: TimeInterval, name: String){
        let newAlarm = Alarm(fireTime: fireTimeFromMidnight, name: name)
        alarmsArray.append(newAlarm)
        
    }
    func updateAlarm(alarm: Alarm, fireTimeFromMidnight: TimeInterval, name: String) {
        alarm.fireTimeFromMidnight = fireTimeFromMidnight
        alarm.name = name
        
    }
    
    func deleteAlarm(alarm: Alarm){
        if let index = alarmsArray.index(of: alarm){
            alarmsArray.remove(at: index)
        }
    }
    
    init(){
        
        let mockAlarm = Alarm(fireTime: 25200, name: "test", enable: true, uuid: "1")
        alarmsArray = [mockAlarm]
    }
    
        
    
}

