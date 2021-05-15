import Foundation

struct Announcement: Identifiable, Codable {
    let id: Int
    let title: String
    let category: String
    let imageUrl: String
    let dateStr: String
}

extension Announcement {
    static var mockData: [Announcement] {
        return [
            Announcement(id: 1, title: "お持ち帰りランチ　はじめました", category: "新着情報", imageUrl: "", dateStr: "2020.04.18"),
            Announcement(id: 2, title: "一緒に働いてくれる仲間を募集中！", category: "求人募集", imageUrl: "", dateStr: "2020.04.01")
        ]
    }
}
