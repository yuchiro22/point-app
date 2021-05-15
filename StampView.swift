import SwiftUI

struct StampView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("QRコード")
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
                                        .frame(width: 50, height: 50)
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 12)
                            Spacer()
                                .frame(height: 12)
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
                                        .frame(width: 50, height: 50)
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 12)
                            Divider()
                                .padding(.all, 6)
                            HStack {
                                Text("ご来店10回で")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            HStack {
                                Text("コーヒー1杯無料")
                                    .font(.system(size: 16))
                                    .foregroundColor(.black)
                                    .padding(.vertical, 1)
                                Spacer()
                            }
                            HStack {
                                Text("スタンプカードの有効期限：2022.04.09")
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                        }
                        .padding()
                    }
                    .padding(.horizontal, 12)
                    .fixedSize(horizontal: false, vertical: true)
                }
                Button(action: {
                    
                }) {
                    ZStack {
                        Color.green
                            .cornerRadius(6)
                        Text("クーポンに引き換える")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding()
                }
            }
            .background(Color.gray)
            .navigationBarTitle("スタンプカード", displayMode: .inline)
        }
    }
}

struct StampView_Previews: PreviewProvider {
    static var previews: some View {
        StampView()
    }
}
