import Foundation
import SwiftUI

struct StampCountModel: Identifiable, Hashable, Codable {
    var id = UUID()
    let dateStr: String
}

final class StampViewModel: ObservableObject {
    @Published var stampArray: [StampCountModel] = []
    @Published var isSucceedExchange: Bool = false
    
    init() {
        guard let data = UserDefaults.standard.data(forKey: "stampCount"),
            let savedStampArray = try? JSONDecoder().decode([StampCountModel].self, from: data) else {
            return
        }
        stampArray = savedStampArray
    }
    
    func didScanStamp() {
        stampArray.append(StampCountModel(dateStr: "5/11"))

        guard let data = try? JSONEncoder().encode(stampArray) else {
            return
        }
        UserDefaults.standard.set(data, forKey: "stampCount")
    }
    
    func didTapExchageButton() {
        guard stampArray.count == 10 else {
            print("stamp exchange error")
            return
        }
        isSucceedExchange = true
        
        // exchange stamp to coupon function
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            guard let data = UserDefaults.standard.data(forKey: "stampCount"),
                let _ = try? JSONDecoder().decode([StampCountModel].self, from: data) else {
                self.isSucceedExchange = false
                return
            }
            
            var couponCount = UserDefaults.standard.integer(forKey: "couponCount")
            couponCount += 1
            UserDefaults.standard.set(couponCount, forKey: "couponCount")
            
            self.stampArray.removeAll()
            guard let savedStampArray = try? JSONEncoder().encode(self.stampArray) else {
                self.isSucceedExchange = false
                return
            }
            UserDefaults.standard.set(savedStampArray, forKey: "stampCount")
            self.isSucceedExchange = false
        }
    }
}
