import SwiftUI

struct ExchangeCouponSucceedDialog: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        Group {
            Text("ポイントをクーポンに\n引き換えました")
                .multilineTextAlignment(.center)
                .font(.system(size: 14))
                .foregroundColor(Color("text_base"))
                .padding(.vertical, 32)
                .padding(.horizontal, 70)
                .background(Color.white)
                .cornerRadius(4.0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("dialog_background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ExchangeCouponSucceedDialog_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeCouponSucceedDialog(isShowing: .constant(true))
    }
}
