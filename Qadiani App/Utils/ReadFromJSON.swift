//
//  ReadFromJSON.swift
//  Qadiani App
//
//  Created by Md. Mominul Islam on 25/9/23.
//

import Foundation

struct QadyyaniQA: Codable {
    let questionlist: [QuestioAnswer]
}
struct QuestioAnswer: Codable {
    let question: String
    let answer: String
}

func fetchQAList() -> [QuestioAnswer] {
    if let jsonURL = Bundle.main.url(forResource: "qadyyani", withExtension: "json") {
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let qaList = try JSONDecoder().decode(QadyyaniQA.self, from: jsonData)
            return qaList.questionlist
        } catch {
            print("Error decoding JSON: \(error)")
        }
    } else {
        print("JSON file not found.")
    }
    return []
}
