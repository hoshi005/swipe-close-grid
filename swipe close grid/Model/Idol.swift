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
    
    var imageName: String {
        String(format: "%03d", id)
    }
}

let idols = [
    Idol(id: 1, name: "天海春香"),
    Idol(id: 2, name: "如月千早"),
    Idol(id: 3, name: "星井美希"),
    Idol(id: 4, name: "萩原雪歩"),
    Idol(id: 5, name: "高槻やよい"),
    Idol(id: 6, name: "菊地真"),
    Idol(id: 7, name: "水瀬伊織"),
    Idol(id: 8, name: "四条貴音"),
    Idol(id: 9, name: "秋月律子"),
    Idol(id: 10, name: "三浦あずさ"),
    Idol(id: 11, name: "双海亜美"),
    Idol(id: 12, name: "双海真美"),
    Idol(id: 13, name: "我那覇響"),
    Idol(id: 14, name: "春日未来"),
    Idol(id: 15, name: "最上静香"),
    Idol(id: 16, name: "伊吹翼"),
    Idol(id: 17, name: "田中琴葉"),
    Idol(id: 18, name: "島原エレナ"),
    Idol(id: 19, name: "佐竹美奈子"),
    Idol(id: 20, name: "所恵美"),
    Idol(id: 21, name: "徳川まつり"),
    Idol(id: 22, name: "箱崎星梨花"),
    Idol(id: 23, name: "野々原茜"),
    Idol(id: 24, name: "望月杏奈"),
    Idol(id: 25, name: "ロコ"),
    Idol(id: 26, name: "七尾百合子"),
    Idol(id: 27, name: "高山紗代子"),
    Idol(id: 28, name: "松田亜利沙"),
    Idol(id: 29, name: "高坂海美"),
    Idol(id: 30, name: "中谷育"),
    Idol(id: 31, name: "天空橋朋花"),
    Idol(id: 32, name: "エミリー・スチュアート"),
    Idol(id: 33, name: "北沢志保"),
    Idol(id: 34, name: "舞浜歩"),
    Idol(id: 35, name: "木下ひなた"),
    Idol(id: 36, name: "矢吹可奈"),
    Idol(id: 37, name: "横山奈緒"),
    Idol(id: 38, name: "二階堂千鶴"),
    Idol(id: 39, name: "馬場このみ"),
    Idol(id: 40, name: "環大神"),
    Idol(id: 41, name: "豊川風花"),
    Idol(id: 42, name: "宮尾美也"),
    Idol(id: 43, name: "福田のり子"),
    Idol(id: 44, name: "真壁瑞稀"),
    Idol(id: 45, name: "篠宮可憐"),
    Idol(id: 46, name: "百瀬莉緒"),
    Idol(id: 47, name: "永吉昴"),
    Idol(id: 48, name: "北上麗花"),
    Idol(id: 49, name: "周防桃子"),
    Idol(id: 50, name: "ジュリア"),
    Idol(id: 51, name: "白石紬"),
    Idol(id: 52, name: "桜守歌織"),
]
