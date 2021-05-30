import SwiftUI

struct StoreInformationView: View {
    @State var storeInformation: [Store]
    var body: some View {
        NavigationView {
            List(storeInformation.indices) { index in
                StoreInformationContentView(storeInfomation: self.$storeInformation[index])
            }
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor(named: "background")
            }
            .navigationBarTitle("店舗一覧", displayMode: .inline)
        }
        .accentColor(Color("text_base"))
    }
}

struct StoreInformationView_Preview: PreviewProvider {
    static var previews: some View {
        StoreInformationView(storeInformation: Store.mockData)
    }
}
