import Foundation
import SwiftUI

struct StampCountModel: Identifiable, Hashable {
    let id = UUID()
    let dateStr: String
}

final class StampViewModel: ObservableObject {
    @Published var stampCount: [StampCountModel] = []

//    init() {
//        stampCount = UserDefaults.standard.integer(forKey: "stampCount")
//        print(stampCount)
//    }

    func didScanStamp() {
        stampCount.append(StampCountModel(dateStr: "5/11"))
        //UserDefaults.standard.setValue(stampCount, forKey: "stampCount")
    }
}
