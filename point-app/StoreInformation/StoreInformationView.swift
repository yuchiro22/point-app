import SwiftUI

struct StoreInformationView: View {
    @State var storeInformation: [Store]
    var body: some View {
        NavigationView {
            List(storeInformation.indices) { index in
                StoreInformationContentView(storeInfomation: self.$storeInformation[index])
                //HomeContentView(announcement: self.$announcements[index])
            }
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor(named: "background")
            }
            .navigationBarTitle("店舗情報", displayMode: .inline)
        }
    }
}

struct StoreInformationView_Preview: PreviewProvider {
    static var previews: some View {
        StoreInformationView(storeInformation: Store.mockData)
    }
}
