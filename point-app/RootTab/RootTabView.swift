import SwiftUI

struct RootTabView: View {
    @State private var selectedTab = 0
    let minDragTranslationForSwipe: CGFloat = 50
    let numTabs = 4
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(announcements: Announcement.mockData, topInformation: Information.mockData.first)
                .tabItem {
                    VStack {
                        Image("tab_home")
                        Text("ホーム")
                    }
                }
                .tag(0)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
            StampView()
                .tabItem {
                    VStack {
                        Image("tab_stamp")
                        Text("スタンプ")
                    }
                }
                .tag(1)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
            CouponView()
                .tabItem {
                    VStack {
                        Image("tab_coupon")
                        Text("クーポン")
                    }
                }
                .tag(2)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
            StoreInformationView(storeInformation: Store.mockData)
                .tabItem {
                    VStack {
                        Image("tab_store_information")
                        Text("店舗情報")
                    }
                }
                .tag(3)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
        }
        .accentColor(Color("primary"))
    }

    private func handleSwipe(translation: CGFloat) {
        if translation > minDragTranslationForSwipe && selectedTab > 0 {
            selectedTab -= 1
        } else  if translation < -minDragTranslationForSwipe && selectedTab < numTabs-1 {
            selectedTab += 1
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
