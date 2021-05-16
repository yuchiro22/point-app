import SwiftUI

struct HomeView: View {
    @State var announcements: [Announcement]
    
    var body: some View {
        NavigationView {
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(announcements: Announcement.mockData)
    }
}
