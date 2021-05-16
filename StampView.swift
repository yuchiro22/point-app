import SwiftUI

struct StampView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("qr_example")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                Button(action: {
                    
                }) {
                    ZStack {
                        Color.white
                            .cornerRadius(6)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        VStack {
                            HStack {
                                ForEach((1...5), id: \.self) { index in
                                    Circle()
                                        .strokeBorder(
                                            style: StrokeStyle(
                                                lineWidth: 1,
                                                dash: [4]
                                            )
                                        )
                                        .foregroundColor(.gray)
                                        .frame(width: 48, height: 48)
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 28)
                            Spacer().frame(height: 10)
                            HStack {
                                ForEach((1...5), id: \.self) { index in
                                    Circle()
                                        .strokeBorder(
                                            style: StrokeStyle(
                                                lineWidth: 1,
                                                dash: [4]
                                            )
                                        )
                                        .foregroundColor(.gray)
                                        .frame(width: 48, height: 48)
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 28)
                            Divider()
                                .padding(.top, 16)
                                .padding(.bottom, 10)
                            HStack {
                                Text("ご来店10回で")
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            .padding(.bottom, 2)
                            HStack {
                                Text("コーヒー1杯無料")
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("text_base"))
                                Spacer()
                            }
                            HStack {
                                Text("スタンプカードの有効期限：2022.04.09")
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            .padding(.top, 6)
                        }
                        .padding(.all, 16)
                    }
                    .padding(.horizontal, 16)
                    .fixedSize(horizontal: false, vertical: true)
                }
                Spacer().frame(height: 24)
                Button(action: {
                    
                }) {
                    ZStack {
                        Color("primary")
                            .cornerRadius(6)
                        Text("クーポンに引き換える")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.vertical, 14)
                    }
                    .frame(height: 48)
                    .padding(.horizontal, 16)
                }
                Spacer().frame(height: 20)
            }
            .background(Color("background"))
            .navigationBarTitle("スタンプカード", displayMode: .inline)
        }
    }
}

struct StampView_Previews: PreviewProvider {
    static var previews: some View {
        StampView()
    }
}
