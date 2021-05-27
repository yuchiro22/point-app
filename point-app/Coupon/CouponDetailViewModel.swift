import Foundation
import SwiftUI

final class CouponDetailViewModel: ObservableObject {
    @Published var isShowingConfirmDialog: Bool = false
    
    func didTapUseCoupon() {
        isShowingConfirmDialog = true
    }
    func didTapConfirm() {
        // use coupon function
        var couponCount = UserDefaults.standard.integer(forKey: "couponCount")
        couponCount -= 1
        UserDefaults.standard.set(couponCount, forKey: "couponCount")
    }
}
