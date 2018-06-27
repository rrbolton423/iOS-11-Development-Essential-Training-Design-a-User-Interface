//
//  ViewController.swift
//  Basic UI
//
//  Created by Todd Perkins on 9/19/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // Display initial text in the label
        // when the application launches
        label.text = "Choose a date"
    }

    @IBAction func didChangeDate(_ sender: UIDatePicker) {
        
        // Grab the date from the DatePicker
        let date:Date = sender.date
        
        // Create a DateFormatter object to extract the day of
        // the week from the DatePicker using
        // a DateFormatter
        let formatter:DateFormatter = DateFormatter()
        
        // Specify the date format (Day of the Week)
        formatter.dateFormat = "EEEE"
        
        // Apply the DateFormat to the date to get the day
        // of the week (Monday, Tuesday, Wednesday, etc.)
        let dayOfWeek:String = formatter.string(from: date)
        
        // Display the day of the week in the label
        label.text = "The day is a \(dayOfWeek)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

