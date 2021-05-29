import Foundation

struct Information: Identifiable, Codable {
    let id: Int
    let title: String
    let dateStr: String
    let sentence: String
}

extension Information {
    static var mockData: [Information] {
        return [
            Information(id: 1, title: "新型コロナウイルス感染症に伴う営業時間短縮のお知らせ", dateStr: "2020.04.28", sentence: "お客様各位\n\nいつも当店をご利用いただきありがとうございます。 この度、新型コロナウイルス感染症（COVID-19）の感染拡大を受けまして、当店では、営業時間の短縮を決定いたしました。\n\n 誠に勝手ではございますが、下記期間は営業時間を短縮して営業いたします。皆様にはご不便とご迷惑をおかけしますが、何卒ご理解とご協力をお願いいたします。\n\n ■ 期間 2020年4月30日～5月10日\n\n ■ 営業時間 変更前　11：00～22：00 変更後　11：30～20：00\n\n ※ 期間後の営業について 5月11日以降の営業につきましては、通常営業の予定ですが、社会情勢を踏まえて期間を延長する場合があります。変更時は改めて告知いたします。"),
            Information(id: 2, title: "iOS12未満をお使いの方へ", dateStr: "2020.04.28", sentence: "お客様各位\n\nいつも当アプリをご利用いただきありがとうございます。\n この度、アプリのバージョンアップに伴い、2020年12月末を持ちまして、iOS12未満の端末でのサポートを終了させていただくことを決定いたしました。")
        ]
    }
}
