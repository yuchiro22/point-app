import SwiftUI

struct InformationView: View {
    @ObservedObject private var viewModel = InformationViewModel()
    var body: some View {
        List {
            ForEach(viewModel.informationList.indices, id: \.self) { index in
                InformationContentView(information: $viewModel.informationList[index])
                    
            }
        }
        .navigationTitle("重要なお知らせ")
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
