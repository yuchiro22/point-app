import SwiftUI

struct StoreInformationContentView: View {
    @Binding var storeInfomation: Store
    
    var body: some View {
        VStack {
            HStack {
                Text(storeInfomation.name)
                    .font(.system(size: 14))
                Spacer()
            }
            .padding(.vertical, 12)
            HStack {
                Text("住所")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Spacer()
                    .frame(width: 42)
                Text(storeInfomation.address)
                    .font(.system(size: 12))
                Spacer()
            }
            HStack {
                Text("電話番号")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Spacer()
                    .frame(width: 18)
                Text(storeInfomation.telephoneNumber)
                    .font(.system(size: 12))
                Spacer()
            }
            .padding(.vertical, 1)
            HStack {
                Text("営業時間")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Spacer()
                    .frame(width: 18)
                Text(storeInfomation.openingHours)
                    .font(.system(size: 12))
                Spacer()
            }
            .padding(.bottom, 6)
        }
        .padding(.horizontal, 12)
    }
}

struct StoreInformationContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoreInformationContentView(storeInfomation: .constant(Store.mockData[0]))
    }
}
