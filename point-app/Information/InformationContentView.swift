import SwiftUI

struct InformationContentView: View {
    @Binding var information: Information
    
    var body: some View {
        NavigationLink(
            destination: InformationDetailView(information: information)) {
            VStack {
                HStack {
                    Text(information.dateStr)
                        .font(.system(size: 12))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                .padding(.top, 12)
                .padding(.bottom, 8)
                
                HStack {
                    Text(information.title)
                        .foregroundColor(Color("text_base"))
                        .font(.system(size: 14))
                        .padding(.bottom, 12)
                    Spacer()
                }
            }
        }
    }
}

struct InformationContentView_Previews: PreviewProvider {
    static var previews: some View {
        InformationContentView(information: .constant(Information.mockData.first!))
    }
}
