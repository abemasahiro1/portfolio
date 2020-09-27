//
//  ProduceViewController.swift
//  portfolio
//
//  Created by アベマサヒロ on 2020/09/19.
//  Copyright © 2020 wings. All rights reserved.
//

import UIKit

class ProduceViewController: UIViewController {

    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var body: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        month.text = "3月"
        name.text = "イチゴ"
        body.text = "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
