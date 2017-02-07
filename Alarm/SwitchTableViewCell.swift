//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    weak var delegate: SwitchTableViewCellDelegate?

    @IBAction func alarmSwitchToggled(_ sender: UISwitch) {
        delegate?.alarmValueChanged(self, selected: sender.isOn)
    }
    @IBOutlet weak var alarmSwitch: UISwitch!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var alarm: Alarm?{
        
        didSet{
            guard let alarm = alarm else {return}
            nameLabel.text = alarm.name
            timeLabel.text = alarm.fireTimeAsString
            alarmSwitch.isOn = alarm.enable
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
   
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
protocol SwitchTableViewCellDelegate: class {
    func alarmValueChanged(_ cell: SwitchTableViewCell, selected: Bool)
}
