//
//  Idol.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import Foundation

struct Idol: Identifiable {
    
    var id: Int
    var name: String
    var color: String
    
    var imageName: String {
        String(format: "%03d", id)
    }
}

let idols = [
    Idol(id: 1, name: "天海春香", color: "#F70F1F"),
    Idol(id: 2, name: "如月千早", color: "#0775C4"),
    Idol(id: 3, name: "星井美希", color: "#A1CA62"),
    Idol(id: 4, name: "萩原雪歩", color: "#AECECB"),
    Idol(id: 5, name: "高槻やよい", color: "#F29047"),
    Idol(id: 6, name: "菊地真", color: "#464B4F"),
    Idol(id: 7, name: "水瀬伊織", color: "#FA98BF"),
    Idol(id: 8, name: "四条貴音", color: "#B51D66"),
    Idol(id: 9, name: "秋月律子", color: "#00A752"),
    Idol(id: 10, name: "三浦あずさ", color: "#7E51A6"),
    Idol(id: 11, name: "双海亜美", color: "#FCD424"),
    Idol(id: 12, name: "双海真美", color: "#FCD424"),
    Idol(id: 13, name: "我那覇響", color: "#00B1BB"),
    Idol(id: 14, name: "春日未来", color: "#EA5B76"),
    Idol(id: 15, name: "最上静香", color: "#6495CF"),
    Idol(id: 16, name: "伊吹翼", color: "#FED552"),
    Idol(id: 17, name: "田中琴葉", color: "#92CFBB"),
    Idol(id: 18, name: "島原エレナ", color: "#9BCE92"),
    Idol(id: 19, name: "佐竹美奈子", color: "#58a6dc"),
    Idol(id: 20, name: "所恵美", color: "#454341"),
    Idol(id: 21, name: "徳川まつり", color: "#5abfb7"),
    Idol(id: 22, name: "箱崎星梨花", color: "#ed90ba"),
    Idol(id: 23, name: "野々原茜", color: "#eb613f"),
    Idol(id: 24, name: "望月杏奈", color: "#7e6ca8"),
    Idol(id: 25, name: "ロコ", color: "#FFF03C"),
    Idol(id: 26, name: "七尾百合子", color: "#c7b83c"),
    Idol(id: 27, name: "高山紗代子", color: "#7f6575"),
    Idol(id: 28, name: "松田亜利沙", color: "#b54461"),
    Idol(id: 29, name: "高坂海美", color: "#E9739B"),
    Idol(id: 30, name: "中谷育", color: "#f7e78e"),
    Idol(id: 31, name: "天空橋朋花", color: "#bee3e3"),
    Idol(id: 32, name: "エミリー・スチュアート", color: "#554171"),
    Idol(id: 33, name: "北沢志保", color: "#afa690"),
    Idol(id: 34, name: "舞浜歩", color: "#e25a9b"),
    Idol(id: 35, name: "木下ひなた", color: "#d1342c"),
    Idol(id: 36, name: "矢吹可奈", color: "#f5ad3b"),
    Idol(id: 37, name: "横山奈緒", color: "#788bc5"),
    Idol(id: 38, name: "二階堂千鶴", color: "#f19557"),
    Idol(id: 39, name: "馬場このみ", color: "#f1becb"),
    Idol(id: 40, name: "環大神", color: "#ee762e"),
    Idol(id: 41, name: "豊川風花", color: "#7278a8"),
    Idol(id: 42, name: "宮尾美也", color: "#d7a96b"),
    Idol(id: 43, name: "福田のり子", color: "#eceb70"),
    Idol(id: 44, name: "真壁瑞稀", color: "#99b7dc"),
    Idol(id: 45, name: "篠宮可憐", color: "#b63b40"),
    Idol(id: 46, name: "百瀬莉緒", color: "#f19591"),
    Idol(id: 47, name: "永吉昴", color: "#aeb49c"),
    Idol(id: 48, name: "北上麗花", color: "#6bb6b0"),
    Idol(id: 49, name: "周防桃子", color: "#efb864"),
    Idol(id: 50, name: "ジュリア", color: "#d7385f"),
    Idol(id: 51, name: "白石紬", color: "#ebe1ff"),
    Idol(id: 52, name: "桜守歌織", color: "#274079"),
]
