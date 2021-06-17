import SwiftUI

struct UseCouponSucceedDialog: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            Text("クーポンを利用しました！")
                .font(.system(size: 14))
                .foregroundColor(Color("text_base"))
        }
        .frame(width: 300, height: 144)
        .background(Color.white)
        .cornerRadius(4.0)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("dialog_background"))
        .edgesIgnoringSafeArea(.all)
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                isShowing.toggle()
            }
        }
    }
}

struct UseCouponSucceedDialog_Previews: PreviewProvider {
    static var previews: some View {
        UseCouponSucceedDialog(isShowing: .constant(true))
    }
}
