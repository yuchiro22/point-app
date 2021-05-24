import SwiftUI

struct CouponContentView: View {
    @Binding var coupon: Coupon
    
    var body: some View {
        NavigationLink(destination: CouponDetailView(coupon: $coupon)) {
            ZStack {
                Color("primary")
                    .cornerRadius(12)
                Color.white
                    .offset(x: 12, y: 0)
                    .padding(.trailing, 12)
                HStack {
                    Spacer().frame(width: 42)
                    VStack {
                        Spacer().frame(height: 48)
                        Text(coupon.title)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        Spacer().frame(height: 4)
                        HStack {
                            Image(systemName: "clock")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 10, height: 10, alignment: .center)
                            Text("\(coupon.expiredDateStr)まで有効")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                        }
                        Spacer().frame(height: 48)
                    }
                    Spacer()
                }
            }
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct CouponContentView_Previews: PreviewProvider {
    static var previews: some View {
        CouponContentView(coupon: .constant(Coupon.mockData.first!))
    }
}
