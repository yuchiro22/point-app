import SwiftUI

struct HomeView: View {
    @ObservedObject private var viewModel = HomeViewModel()
    @State var announcements: [Announcement]
    @State var topInformation: Information?
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("重要なお知らせ")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color("text_base"))
                    Spacer()
                    NavigationLink(
                    destination: InformationView()) {
                        Text("もっと見る")
                            .font(.system(size: 12))
                            .foregroundColor(Color("text_second"))
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                if let information = topInformation {
                    NavigationLink(destination: InformationDetailView(information: information)) {
                        HStack {
                            Image("information_icon")
                            Text(information.title)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("text_second"))
                                .frame(width: 8, height: 8)
                        }
                        .padding(.horizontal, 16)
                    }
                    
                }
                ScrollView(.vertical, showsIndicators: true) {
                    ForEach(announcements.indices) { index in
                        HomeContentView(announcement: self.$announcements[index])
                            .padding()
                    }
                }
                .background(Color("background"))
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image("logo")
                    }
                }
            }
        }
        .accentColor(Color("text_base"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(announcements: Announcement.mockData)
    }
}
