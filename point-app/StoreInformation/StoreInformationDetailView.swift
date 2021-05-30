import SwiftUI

struct StoreInformationDetailView: View {
    @ObservedObject private var viewModel = StoreInformationDetailViewModel()
    @Binding var storeInformation: Store
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 12)
            Group {
                HStack {
                    Text(storeInformation.name)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color("text_base"))
                    Spacer()
                    Button(action: {
                        viewModel.didTapOpenMap()
                    }, label: {
                        Text("地図アプリで見る")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 10))
                            .padding(.vertical, 8.5)
                            .padding(.horizontal, 8)
                            .border(
                                Color("primary"),
                                width: 1
                            )
                            .cornerRadius(2.0)
                    })
                }
            }
            .frame(height: 32)
            
            Image(storeInformation.imagePath)
                .resizable()
                .frame(height: 228)
                .clipped()
                .padding(.bottom, 20)
            Group {
                HStack {
                    Text("住所")
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 4)
                HStack {
                    Text(storeInformation.address)
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 12)
            }
            Group {
                HStack {
                    Text("電話番号")
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 4)
                HStack {
                    Text(storeInformation.telephoneNumber)
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 12)
            }
            Group {
                HStack {
                    Text("営業日")
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 4)
                HStack {
                    Text(storeInformation.businessDay)
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 12)
            }
            Group {
                HStack {
                    Text("営業時間")
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 4)
                HStack {
                    Text(storeInformation.openingHours)
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 12)
            }
            Group {
                HStack {
                    Text("客席数")
                        .font(.system(size: 10))
                        .foregroundColor(Color("text_second"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 4)
                HStack {
                    Text(storeInformation.seatsCapacity)
                        .font(.system(size: 14))
                        .foregroundColor(Color("text_base"))
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .navigationTitle("店舗情報")
    }
}

struct StoreInformationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreInformationDetailView(storeInformation: .constant(Store.mockData[0]))
    }
}
