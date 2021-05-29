import Foundation
import SwiftUI

final class StoreInformationDetailViewModel: ObservableObject {
    
    func didTapOpenMap() {
        let latitude = "35.68526409484859"
        let longitude = "139.75333789050097"
        var urlString = "http://maps.apple.com/?daddr=\(latitude),\(longitude)&dirflg=w"
        if UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!) {
            urlString = "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=walking&zoom=14"
        } 
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
