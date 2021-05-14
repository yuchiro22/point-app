import SwiftUI

struct RootTabView: View {
    @State private var selectedTab = 0
    let minDragTranslationForSwipe: CGFloat = 50
    let numTabs = 4

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "a")
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
                        Image(systemName: "bold")
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
                        Image(systemName: "bold")
                        Text("クーポン")
                    }
                }
                .tag(2)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
            InformationView()
                .tabItem {
                    VStack {
                        Image(systemName: "bold")
                        Text("店舗情報")
                    }
                }
                .tag(3)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                }))
        }
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
