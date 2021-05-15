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
                    .frame(height: 300, alignment: .center)
                VStack {
                    HStack {
                        Text(announcement.category)
                            .padding(.all, 5.0)
                            .foregroundColor(.orange)
                            .font(.system(size: 12))
                            .border(Color.orange, width: 1)
                        Spacer()
                    }
                    HStack {
                        Text(announcement.title)
                            .font(.system(size: 15))
                        Spacer()
                    }
                    .padding(.top, 6)
                    HStack {
                        Text(announcement.dateStr)
                            .font(.system(size: 11.5))
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.top, 6)
                }
                .padding()
            }
        }
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .fixedSize(horizontal: false, vertical: true)
        
    }
}

struct HomeContentView_Preview: PreviewProvider {
    static var previews: some View {
        HomeContentView(announcement: .constant(Announcement.mockData[0]))
    }
}
