import SwiftUI

struct HomeView: View {
    @State var announcements: [Announcement]
    
    var body: some View {
        NavigationView {
            List(announcements.indices) { index in
                HomeContentView(announcement: self.$announcements[index])
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(announcements: Announcement.mockData)
    }
}
