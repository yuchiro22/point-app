import Foundation

struct Store: Identifiable, Codable {
    let id: Int
    let name: String
    let address: String
    let telephoneNumber: String
    let openingHours: String
}

extension Store {
    static var mockData: [Store] {
        return [
            Store(id: 1, name: "〇〇本店", address: "東京都〇〇区△△ 1234-5", telephoneNumber: "012-3456-7890", openingHours: "10:00-19:00"),
            Store(id: 2, name: "□□店", address: "東京都□□区✗✗ 6789-0", telephoneNumber: "012-3456-7890", openingHours: "10:00-19:00"),
            Store(id: 3, name: "☆☆店", address: "神奈川県☆☆区♪♪町 1-2-3", telephoneNumber: "012-3456-7890", openingHours: "10:00-19:00")
        ]
    }
}
