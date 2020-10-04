//
//  ViewController.swift
//  portfolio
//
//  Created by アベマサヒロ on 2020/09/19.
//  Copyright © 2020 wings. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController,FSCalendarDataSource, FSCalendarDelegate, FSCalendarDelegateAppearance {

    @IBOutlet weak var calendar: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calendar.delegate = self
        calendar.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let produceViewController = segue.destination as! ProduceViewController
           let month = Calendar.current.component(.month, from: calendar.currentPage)
           produceViewController.monthInt = month
      }

}

