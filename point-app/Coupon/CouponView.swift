import SwiftUI

struct CouponView: View {
    @State var couponList: [Coupon]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(couponList.indices) { index in
                    Spacer()
                    CouponContentView(coupon: self.$couponList[index])
                }
            }
            .background(Color.gray)
            .navigationBarTitle("クーポン", displayMode: .inline)
        }
    }
}

struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
        CouponView(couponList: Coupon.mockData)
    }
}
