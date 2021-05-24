import SwiftUI

struct CouponDetailView: View {
    @Binding var coupon: Coupon
    
    var body: some View {
        VStack {
            
                Image(coupon.imagePath)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 211)
                    .clipped()
                Spacer()
                    .frame(height: 16)
            Group {
                HStack {
                    Text(coupon.title)
                        .font(.system(size: 16))
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "clock")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 10, height: 10, alignment: .center)
                    Text("\(coupon.expiredDateStr)まで有効")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 24)
                HStack {
                    Text("詳細情報")
                        .font(.system(size: 12))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 6)
                HStack {
                    Text(coupon.detailInformation)
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Spacer()
                }
                
            }
            .padding(.leading, 16)
            Spacer()
            Text("下記ボタンはスタッフが操作します")
                .font(.system(size: 12))
                .foregroundColor(Color("text_second"))
            Button(action: {
                
            }) {
                ZStack {
                    Color("primary")
                        .cornerRadius(6)
                    Text("このクーポンを使う")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .padding(.vertical, 14)
                }
                .frame(height: 48)
                .padding(.horizontal, 16)
            }
        }
        .background(Color("background"))
    }
}

struct CouponDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CouponDetailView(coupon: .constant(Coupon.mockData[0]))
    }
}
