import Foundation

struct Coupon: Identifiable, Codable {
    let id: Int
    let title: String
    let imagePath: String
    let detailInformation: String
    let expiredDateStr: String
}

extension Coupon {
    static var mockData: Coupon {
        return
            Coupon(id: 1, title: "コーヒー1杯無料", imagePath: "coupon_mock_1", detailInformation: "※おひとり様1回限り", expiredDateStr: "2020.05.09")
    }
}
