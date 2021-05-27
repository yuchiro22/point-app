import Foundation
import SwiftUI

struct StampCountModel: Identifiable, Hashable {
    let id = UUID()
    let dateStr: String
}

final class StampViewModel: ObservableObject {
    @Published var stampCount: [StampCountModel] = []
    @Published var isSucceedExchange: Bool = false

//    init() {
//        stampCount = UserDefaults.standard.integer(forKey: "stampCount")
//        print(stampCount)
//    }

    func didScanStamp() {
        stampCount.append(StampCountModel(dateStr: "5/11"))
        //UserDefaults.standard.setValue(stampCount, forKey: "stampCount")
    }
    
    func didTapExchageButton() {
        guard stampCount.count == 10 else {
            print("stamp exchange error")
            return
        }
        // exchange stamp to coupon
        isSucceedExchange = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.stampCount.removeAll()
            self.isSucceedExchange = false
        }
    }
}
