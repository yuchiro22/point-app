import SwiftUI

struct AnnouncementView: View {
    @Binding var announcement: Announcement
    
    var body: some View {
        ScrollView {
            Group {
                Image(announcement.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.width * 0.56)
                    .clipped()
                    .padding(.bottom, 16)
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
                .padding(.horizontal, 16)
                .padding(.bottom, 12)
                HStack {
                    Text(announcement.title)
                        .foregroundColor(Color("text_base"))
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
                Text(announcement.text)
                    .foregroundColor(Color("text_base"))
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                HStack {
                    Text(announcement.dateStr)
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 32)
            }
            .background(Color.white)
        }
        .background(Color("background"))
    }
}

struct AnnouncementView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementView(announcement: .constant(Announcement.mockData[0]))
    }
}
