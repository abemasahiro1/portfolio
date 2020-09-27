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
    @IBOutlet weak var image: UIImageView!
    var produce: Produce?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let produces = createProduces()
        produce = produces[5]
        month.text = produce?.month
        name.text = produce?.name
        body.text = produce?.body
        image.image = produce?.image
        
        // Do any additional setup after loading the view.
    }
    
    private func createProduces() -> [Produce] {
        var produces:[Produce] = []
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "1月", name: "イチゴ", body: "苗箱に土を入れ種をまた土にかぶせて水をやり次の日にハウスの中に入れ苗を育てます", image: #imageLiteral(resourceName: "3")))
        return produces
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
