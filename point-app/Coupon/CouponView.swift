import SwiftUI

struct CouponView: View {
    @ObservedObject private var viewModel = CouponViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                ForEach(viewModel.couponList.indices, id: \.self) { index in
                    Spacer()
                    CouponContentView(coupon: $viewModel.couponList[index])
                        .padding(.horizontal, 16)
                }
            }
            .background(Color("background"))
            .navigationBarTitle("クーポン一覧", displayMode: .inline)
        }
        .onAppear() {
            viewModel.updateCouponListIfNeeded()
        }
    }
}

struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
        CouponView()
    }
}
