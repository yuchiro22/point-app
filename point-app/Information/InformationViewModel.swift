import Foundation
import SwiftUI

final class InformationViewModel: ObservableObject {
    @Published var informationList: [Information] = []
    
    init() {
        informationList = Information.mockData
    }
}
