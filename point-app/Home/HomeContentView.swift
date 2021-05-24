import SwiftUI

struct HomeContentView: View {
    @Binding var announcement: Announcement
    
    var body: some View {
        NavigationLink(destination: AnnouncementView(announcement: $announcement)) {
            ZStack {
                Color.white
                VStack {
                    Image(announcement.imageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                    VStack {
                        HStack {
                            Text(announcement.category)
                                .padding(.vertical, 2)
                                .padding(.horizontal, 4)
                                .foregroundColor(Color("secondary"))
                                .font(.system(size: 10))
                                .border(
                                    Color("secondary"),
                                    width: 1
                                )
                            Spacer()
                        }
                        .padding(.bottom, 6)
                        HStack {
                            Text(announcement.title)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(Color("text_base"))
                            Spacer()
                        }
                        HStack {
                            Text(announcement.dateStr)
                                .font(.system(size: 11.5))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top, 8)
                    }
                    .padding(.leading, 8)
                    .padding(.bottom, 20)
                }
            }
        }
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .fixedSize(horizontal: false, vertical: true)
        
    }
    
}

struct HomeContentView_Preview: PreviewProvider {
    static var previews: some View {
        HomeContentView(announcement: .constant(Announcement.mockData[0]))
    }
}
