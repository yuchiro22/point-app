import SwiftUI

struct CouponContentView: View {
    @Binding var coupon: Coupon
    
    var body: some View {
        ZStack {
            Color("primary")
                .cornerRadius(12)
            Color.white
                .offset(x: 12, y: 0)
                .padding(.trailing, 12)
            HStack {
                Spacer()
                    .frame(width: 24)
                VStack {
                    Text(coupon.title)
                        .font(.system(size: 17))
                    Spacer()
                    Text("\(coupon.expiredDateStr)まで有効")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                Spacer()
            }
            .padding(.vertical, 48)
        }
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 12)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct CouponContentView_Previews: PreviewProvider {
    static var previews: some View {
        CouponContentView(coupon: .constant(Coupon.mockData.first!))
    }
}
