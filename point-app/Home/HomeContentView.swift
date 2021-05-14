import SwiftUI

struct HomeContentView: View {
    @Binding var announcement: Announcement
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(12)
            VStack {
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                VStack {
                    Text(announcement.category)
                        .foregroundColor(.orange)
                    Text(announcement.title)
                        .font(.title)
                }.padding()
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
