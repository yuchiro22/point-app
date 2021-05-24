import Foundation

struct Announcement: Identifiable, Codable {
    let id: Int
    let title: String
    let category: String
    let text: String
    let imageUrl: String
    let dateStr: String
}

extension Announcement {
    static var mockData: [Announcement] {
        return [
            Announcement(id: 1, title: "お持ち帰りランチ　はじめました", category: "新着情報", text: "皆様のご要望にお答えして、ランチメニューのお持ち帰りを開始いたしました（※一部持ち帰り不可のメニューもございます）。家で、おでかけに、お好きな場所で当店自慢のランチをお召し上がりください。 ※お持ち帰りの際、箱代に50円頂きます。", imageUrl: "announcement_mock_1", dateStr: "2020.04.18"),
            Announcement(id: 2, title: "一緒に働いてくれる仲間を募集中！", category: "求人募集", text: "当店では、一緒に働いてくれるアルバイトを募集しています。 コーヒーが好きな方、接客が好きな方、お気軽にお声がけください。土日入れる方大歓迎！ ■ 仕事内容 ホール接客、調理補助 ■勤務時間 10:00- 18:00　シフト制 ■時給 980円〜 ご応募は03-0000-0000　担当：田中まで", imageUrl: "announcement_mock_2", dateStr: "2020.04.01")
        ]
    }
}
