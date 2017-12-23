//
//  DetailOneViewController.swift
//  MemoSubway
//
//  Created by SWUCOMPUTER on 2017. 12. 22..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class DetailOneViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textStation: UITextField!
    @IBOutlet var textLocation: UITextField!
    @IBOutlet var textMemo: UITextField!
    @IBOutlet var textDate: UITextField!
    
    var detailStation: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let station = detailStation {
            
            textStation.text = station.value(forKey: "stationname") as? String
            textLocation.text = station.value(forKey: "place") as? String
            self.title = textLocation.text
            textMemo.text = station.value(forKey: "memo") as? String
            let dbDate: Date? = station.value(forKey: "saveDate") as? Date
            let formatter: DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            if let unwrapDate = dbDate {
                let displayDate = formatter.string(from: unwrapDate as Date)
                textDate.text = displayDate
            } }
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
