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
    func calendarCurrentPageDidChange(_ calendar: FSCalendar) {
             switch Calendar.current.component(.month, from: calendar.currentPage) {
            case 1:
                self.view.backgroundColor = UIColor.lightGray
            case 2:
                self.view.backgroundColor = UIColor.gray
            case 3:
                self.view.backgroundColor = UIColor.darkGray
            case 4:
                self.view.backgroundColor = UIColor.systemPink
            case 5:
                self.view.backgroundColor = UIColor.red
            case 6:
                self.view.backgroundColor = UIColor.orange
            case 7:
                self.view.backgroundColor = UIColor.yellow
            case 8:
                self.view.backgroundColor = UIColor.systemYellow
            case 9:
                self.view.backgroundColor = UIColor.purple
            case 10:
                self.view.backgroundColor = UIColor.black
            case 11:
                self.view.backgroundColor = UIColor.blue
            case 12:
                self.view.backgroundColor = UIColor.white
            default:
                break
            }
    }
    }


