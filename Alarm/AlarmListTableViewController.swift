//
//  AlarmListTableViewController.swift
//  Alarm
//
//  Created by Taylor Phillips on 2/6/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class AlarmListTableViewController: UITableViewController, SwitchTableViewCellDelegate {

       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return AlarmController.sharedController.alarmsArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "timeListCell", for: indexPath) as? SwitchTableViewCell ?? SwitchTableViewCell()

        let index = AlarmController.sharedController.alarmsArray[indexPath.row]
        cell.alarm = index
        cell.delegate = self
        
        

        return cell
    }
    
    
    // MARK! Creating the cell delegate!
    
    func alarmValueChanged (_ cell:SwitchTableViewCell, selected: Bool) {
        guard let alarm = cell.alarm,
            let cellIndexPath = tableView.indexPath(for: cell) else {return}
        tableView.beginUpdates()
        alarm.enable = selected
        tableView.reloadRows(at: [cellIndexPath], with: .automatic)
        tableView.endUpdates()
        
//        AlarmController.switchEnabled(alarm)
        
        tableView.reloadData()
    

    

    }
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            let alarm = AlarmController.sharedController.alarmsArray[indexPath.row]
            AlarmController.sharedController.deleteAlarm(alarm: alarm)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
