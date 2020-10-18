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
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendar.calendarWeekdayView.weekdayLabels[0].text = "日"
        calendar.calendarWeekdayView.weekdayLabels[1].text = "月"
        calendar.calendarWeekdayView.weekdayLabels[2].text = "火"
        calendar.calendarWeekdayView.weekdayLabels[3].text = "水"
        calendar.calendarWeekdayView.weekdayLabels[4].text = "木"
        calendar.calendarWeekdayView.weekdayLabels[5].text = "金"
        calendar.calendarWeekdayView.weekdayLabels[6].text = "土"
        imageView.alpha = 0.2
        imageView.contentMode = .scaleAspectFill
        // Do any additional setup after loading the view.
        calendar.delegate = self
        calendar.dataSource = self
        changeSeaon()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let produceViewController = segue.destination as! ProduceViewController
        let month = Calendar.current.component(.month, from: calendar.currentPage)
        produceViewController.monthInt = month
    }
    
    
    private func changeSeaon(){
        UIView.animate(withDuration: 1.0, delay: 0.0, animations: {
            switch Calendar.current.component(.month, from: self.calendar.currentPage) {
            case 3, 4, 5:
                self.imageView.image = UIImage(named: "春")
            case 6, 7, 8:
                self.imageView.image = UIImage(named: "夏")
            case 9, 10, 11:
                self.imageView.image = UIImage(named: "秋")
            case 12, 1, 2:
                self.imageView.image = UIImage(named: "冬")
                
            default:
                break
            }
        }, completion:nil)
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        performSegue(withIdentifier: "goProduce", sender: nil)
    }
    func calendarCurrentPageDidChange(_ calendar: FSCalendar) {
        changeSeaon()
        
    }
}


