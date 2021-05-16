import SwiftUI

struct CouponView: View {
    @State var couponList: [Coupon]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(couponList.indices) { index in
                    Spacer()
                    CouponContentView(coupon: self.$couponList[index])
                        .padding(.horizontal, 16)
                }
            }
            .background(Color("background"))
            .navigationBarTitle("クーポン一覧", displayMode: .inline)
        }
    }
}

struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
        CouponView(couponList: Coupon.mockData)
    }
}
