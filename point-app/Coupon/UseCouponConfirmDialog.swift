import SwiftUI

struct UseCouponConfirmDialog: View {
    @ObservedObject var viewModel: CouponDetailViewModel
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("このクーポンを利用しますか？\nこの操作は取り消せません。")
                    .font(.system(size: 14))
                    .foregroundColor(Color("text_base"))
                    .padding(.top, 24)
                    .padding(.leading, 20)
                Spacer()
                    .frame(width: 64)
            }
            .padding(.bottom, 32)
            HStack {
                Spacer()
                Button(action: {
                    isShowing.toggle()
                }) {
                    Text("キャンセル")
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_second"))
                }
                Spacer()
                    .frame(width: 16)
                Button(action: {
                    isShowing.toggle()
                    viewModel.didTapConfirm()
                }) {
                    Text("利用する")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 8)
                        .background(Color("primary"))
                        .cornerRadius(2.0)
                }
                Spacer()
                    .frame(width: 12)
            }
        }
        .frame(width: 300, height: 144)
        .background(Color.white)
        .cornerRadius(4.0)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("dialog_background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct UseCouponConfirmDialog_Previews: PreviewProvider {
    static var previews: some View {
        UseCouponConfirmDialog(viewModel: CouponDetailViewModel(), isShowing: .constant(true))
    }
}
