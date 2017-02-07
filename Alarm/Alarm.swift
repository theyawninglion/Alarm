//
//  Alarm.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import Foundation

class Alarm: Equatable{
    
    var fireDate: Date? {
        guard let thisMorningAtMidnight = DateHelper.thisMorningAtMidnight else {return nil}
        let fireDateFromThisMorning = Date(timeInterval: fireTimeFromMidnight, since: thisMorningAtMidnight as Date)
        return fireDateFromThisMorning
    }
    
    var fireTimeAsString: String {
        let fireTimeFromMidnight = Int(self.fireTimeFromMidnight)
        var hours = fireTimeFromMidnight/60/60
        let minutes = (fireTimeFromMidnight - (hours*60*60))/60
        if hours >= 13 {
            return String(format: "%2d:%02d PM", arguments: [hours - 12, minutes])
        } else if hours >= 12 {
            return String(format: "%2d:%02d PM", arguments: [hours, minutes])
        } else {
            if hours == 0 {
                hours = 12
            }
            return String(format: "%2d:%02d AM", arguments: [hours, minutes])
        }
    }
    
    static func ==(lhs: Alarm, rhs: Alarm) -> Bool{
        return lhs.fireTimeFromMidnight == rhs.fireTimeFromMidnight && lhs.name == rhs.name && lhs.enable == rhs.enable && lhs.uuid == lhs.uuid
    }
    
    var fireTimeFromMidnight: TimeInterval
    var name: String
    var enable: Bool
    var uuid: String
    
    
    init (fireTime: TimeInterval, name: String, enable: Bool = true, uuid: String = UUID().uuidString){
        self.fireTimeFromMidnight = fireTime
        self.name = name
        self.enable = enable
        self.uuid = uuid
    }
}
