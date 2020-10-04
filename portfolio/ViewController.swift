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
        
        calendar.calendarWeekdayView.weekdayLabels[0].text = "日"
        calendar.calendarWeekdayView.weekdayLabels[1].text = "月"
        calendar.calendarWeekdayView.weekdayLabels[2].text = "火"
        calendar.calendarWeekdayView.weekdayLabels[3].text = "水"
        calendar.calendarWeekdayView.weekdayLabels[4].text = "木"
        calendar.calendarWeekdayView.weekdayLabels[5].text = "金"
        calendar.calendarWeekdayView.weekdayLabels[6].text = "土"
        // Do any additional setup after loading the view.
        calendar.delegate = self
        calendar.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let produceViewController = segue.destination as! ProduceViewController
           let month = Calendar.current.component(.month, from: calendar.currentPage)
           produceViewController.monthInt = month
      }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        performSegue(withIdentifier: "goProduce", sender: nil)
    }
}

