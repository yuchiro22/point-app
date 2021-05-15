import Foundation

struct Coupon: Identifiable, Codable {
    let id: Int
    let title: String
    let expiredDateStr: String
}

extension Coupon {
    static var mockData: [Coupon] {
        return [
            Coupon(id: 1, title: "コーヒー1杯無料", expiredDateStr: "2020.05.09")
        ]
    }
}
