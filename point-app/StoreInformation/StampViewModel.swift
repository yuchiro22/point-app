import Foundation
import SwiftUI

struct StampCountModel: Identifiable, Hashable {
    let id = UUID()
    let dateStr: String
}

final class StampViewModel: ObservableObject {
    @Published var stampCount: [StampCountModel] = []
    @Published var isSucceedExchange: Bool = false

    func didScanStamp() {
        stampCount.append(StampCountModel(dateStr: "5/11"))
    }
    
    func didTapExchageButton() {
        guard stampCount.count == 10 else {
            print("stamp exchange error")
            return
        }
        isSucceedExchange = true
        
        // exchange stamp to coupon function
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            var couponCount = UserDefaults.standard.integer(forKey: "couponCount")
            couponCount += 1
            UserDefaults.standard.set(couponCount, forKey: "couponCount")
            self.stampCount.removeAll()
            self.isSucceedExchange = false
        }
    }
}
