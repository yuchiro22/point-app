import SwiftUI

struct InformationDetailView: View {
    var information: Information
    
    var body: some View { 
        ZStack {
            Color("background")
            VStack {
                HStack {
                    Text("\(information.dateStr)更新")
                        .foregroundColor(Color("text_second"))
                        .font(.system(size: 10))
                    Spacer()
                }
                .padding(.vertical, 12)
                
                Text(information.title)
                    .foregroundColor(Color("text_base"))
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                Text(information.sentence)
                    .font(.system(size: 12))
                    .foregroundColor(Color("text_base"))
                Spacer()
            }
            .padding(.horizontal, 16)
        }
        .navigationTitle("お知らせ")
    }
}

struct InformationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView(information: Information.mockData.first!)
    }
}
