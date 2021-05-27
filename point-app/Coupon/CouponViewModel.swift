import Foundation
import SwiftUI

final class CouponViewModel: ObservableObject {
    @Published var couponList: [Coupon] = []
    
    func updateCouponListIfNeeded() {
        let couponCount = UserDefaults.standard.integer(forKey: "couponCount")
        couponList.removeAll()
        for _ in 0..<couponCount {
            couponList.append(Coupon.mockData)
        }
    }
}
