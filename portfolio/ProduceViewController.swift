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
    var monthInt: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let produces = createProduces()
        produce = produces[monthInt! - 1]
        month.text = produce?.month
        name.text = produce?.name
        body.text = produce?.body
        image.image = produce?.image
        
        // Do any additional setup after loading the view.
    }
    
    private func createProduces() -> [Produce] {
        var produces:[Produce] = []
        produces.append(Produce(month: "1月", name: "レモン", body: "レモンの原産地はインドのヒマラヤ山麓です。生産量日本一は広島県でとくに生口島は島の約半分が急傾斜になっているため日当りが良く、瀬戸内海でも指折りの柑橘類の産地となっています。", image: #imageLiteral(resourceName: "1")))
        produces.append(Produce(month: "2月", name: "柚子", body: "中華人民共和国中央および西域、揚子江上流の原産であると言われています。高知県が生産量一位で1960年代から林業や和紙原料製造に代わる山村集落の活性化策として産地が相次いで形成され、県を取り囲むようにユズ産地が展開するようになりました。", image: #imageLiteral(resourceName: "2")))
        produces.append(Produce(month: "3月", name: "キウイ", body: "1904年ニュージーランドに種子が持ち込まれ栽培されニュージーランドを代表する果実として世界中に輸出されています。愛媛県が生産量一位です。専門知識がなくても比較的簡単に栽培ができ、苗は一般向けにホームセンターなどの園芸コーナーで容易に入手できるそうです。雄雌を1株ずつ植え、藤棚を使い蔓（ツル）を上手くはわせて栽培すれば、10月から11月頃には果実が収穫です。", image: #imageLiteral(resourceName: "3")))
        produces.append(Produce(month: "4月", name: "イチゴ", body: "平安時代の延喜式にイチゴが記載されていますが、当時は野生の野イチゴが食用として利用されていたようです。栃木県が収穫量日本一ですが本来いちご栽培は温暖な気候の静岡などが適地とされており、当初は露地栽培だったため寒冷対策に苦労したそうです。", image: #imageLiteral(resourceName: "4")))
        produces.append(Produce(month: "5月", name: "マンゴー", body: "マンゴーは約4000年の歴史があり、カレーの王国として有名なインドが原産地として記録が残されています。沖縄以外にもマンゴーを生産しているところもありますが、大抵ビニールハウスの中で暖房装置などで温度を上げているところが多いです。 また、日差しが沖縄に比べ少ないです。しかし沖縄は南国の気候でありマンゴーを栽培するのに適しています。", image: #imageLiteral(resourceName: "5")))
        produces.append(Produce(month: "6月", name: "スイカ", body: "日本に伝わった時期は定かではないですが、室町時代以降とされています。熊本県が生産量日本一なのは地形が盆地であることと、昼と夜の寒暖差が大きいため栽培の土地に適しているからです。また、地下水（飲み水）が豊富に湧き出ているので、綺麗な水を使用して育てることが出来るそうです。", image: #imageLiteral(resourceName: "6")))
        produces.append(Produce(month: "7月", name: "サクランボ", body: "西アジアが起源とされていて中国では3000年前に栽培記録があるそうです。山形県が全国の収穫量の7割を占めており山がいっぱいの盆地であるからこそ、山々にまもられて、梅雨に降水量が少なく、特に台風の被害が少なく、夏暑くてこの山形特有の気候こそがサクランボを産地に育てた大きな要因と考えられます。", image: #imageLiteral(resourceName: "7")))
        produces.append(Produce(month: "8月", name: "モモ", body: "モモの栽培の歴史は非常に古く、長崎県の多良見町にある伊木力遺跡から縄文時代前期の桃核が出土しており、これが日本最古とされています。主に日本国内では山梨県、福島県、長野県など降水量の少ない盆地で栽培されているそうです。私は地元が福島なので8月になると桃を買って家族で一緒に食べています。", image: #imageLiteral(resourceName: "8")))
        produces.append(Produce(month: "9月", name: "リンゴ", body: "スイス地方の先住民族といわれている湖棲民族の遺跡からはリンゴの化石が発見されており、推定4000年前にはリンゴが栽培されていたと考えられています。青森県が生産量60%を占めていて涼しい夏がりんごに適していたことや広い土地があったことが挙げられます。", image: #imageLiteral(resourceName: "9")))
        produces.append(Produce(month: "10月", name: "ブドウ", body: "ブドウの栽培化の歴史は古く、紀元前3000年頃には原産地であるコーカサス地方やカスピ海沿岸ですでにヨーロッパブドウの栽培が開始されていたそうです。桃に続いてぶどうも山梨県生産量日本一です。昼と夜の寒暖差が大きい、年間日照時間が日本一、年間の降水量が日本一少ないこの３つが山梨県が果樹大国である事だと思います。 ", image: #imageLiteral(resourceName: "10")))
        produces.append(Produce(month: "11月", name: "ナシ", body: "日本でナシが食べられ始めたのは弥生時代頃とされ、登呂遺跡などから多数食用にされたとされる根拠の種子などが見つかっているそうです。日本梨では千葉県がトップですが、西洋梨では山形県が日本一となっています。", image: #imageLiteral(resourceName: "11")))
        produces.append(Produce(month: "12月", name: "ミカン", body: "柑橘の原種は3000万年前のインド東北部のアッサム地方近辺を発祥とし、様々な種に分化しながらミャンマー、タイ、中国等へ広まったとされています。和歌山県が生産量一位ですが柑橘王国である愛媛県をピックアップします傾斜地では、西宇和地域に代表される石垣に覆われた段々畑が多くみられます。石垣の石は熱が冷めにくいため、暖かさを保つこともできます。海からの反射光、石垣からの輻射熱（照り返し）をいっぱいに浴びてるから美味しいです。", image: #imageLiteral(resourceName: "12")))
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
