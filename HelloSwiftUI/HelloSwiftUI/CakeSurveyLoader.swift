//
//  CakeSurveyLoader.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/09/30
//  Copyright © 2019 Classmethod. All rights reserved.
//

import Foundation

struct CakeSurveyLoader {
    
    func load() -> [Cake]? {
        let decoder = JSONDecoder()
        let jsonData = jsonStr.data(using: .utf8)!
        var cakes: [Cake]?
        do {
            cakes = try decoder.decode([Cake].self, from: jsonData)
        } catch let error {
            print("errro \(error)")
            return nil
        }
        return cakes
    }
    
    // 出典
    // 最も好きなケーキの種類はなに? 1位は誰もが納得、王道の●●に! | マイナビニュース
    // https://news.mynavi.jp/article/20180223-586948/
    var jsonStr: String = """
[
        { "id": "id1", "rank": 1, "name": "ショートケーキ", "percentage": 24.5 },
        { "id": "id2", "rank": 2, "name": "チーズケーキ", "percentage": 20.9 },
        { "id": "id3", "rank": 3, "name": "モンブラン", "percentage": 12.7 },
        { "id": "id4", "rank": 4, "name": "チョコレートケーキ", "percentage": 11.6 },
        { "id": "id5", "rank": 5, "name": "タルト", "percentage": 6.6 },
        { "id": "id6", "rank": 6, "name": "フルーツケーキ", "percentage": 6.4 },
        { "id": "id7", "rank": 7, "name": "ティラミス", "percentage": 4.3 },
        { "id": "id8", "rank": 8, "name": "ミルフィーユ", "percentage": 3.6 },
        { "id": "id9", "rank": 9, "name": "ロールケーキ", "percentage": 3.2 },
        { "id": "id10", "rank": 10, "name": "ミルクレープ", "percentage": 2.4 },
        { "id": "id11", "rank": 11, "name": "シフォンケーキ", "percentage": 2.0 },
        { "id": "id12", "rank": 12, "name": "パイ", "percentage": 1.3 },
        { "id": "id13", "rank": 13, "name": "その他", "percentage": 0.6 }
]
"""
}
