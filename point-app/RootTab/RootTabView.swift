import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "a")
                        Text("ホーム")
                    }
                }.tag(1)
            StampView()
                .tabItem {
                    VStack {
                        Image(systemName: "bold")
                        Text("スタンプ")
                    }
                }.tag(2)
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
