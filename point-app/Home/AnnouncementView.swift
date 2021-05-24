import SwiftUI

struct AnnouncementView: View {
    @Binding var announcement: Announcement
    
    var body: some View {
        ScrollView {
            Group {
                Image(announcement.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 211)
                    .clipped()
                Spacer()
                    .frame(height: 16)
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
                .padding(.leading, 16)
                HStack {
                    Text(announcement.title)
                        .foregroundColor(Color("text_base"))
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading, 16)
                Spacer()
                    .frame(height: 8)
                Text(announcement.text)
                    .foregroundColor(Color("text_base"))
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                Spacer()
                    .frame(height: 16)
                HStack {
                    Text(announcement.dateStr)
                        .font(.system(size: 11.5))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading, 16)
                Spacer()
                    .frame(height: 32)
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
