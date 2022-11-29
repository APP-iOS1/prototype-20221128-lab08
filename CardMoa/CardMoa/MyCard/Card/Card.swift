//
//  CardList.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    var name: String
    var imgName: String
}

extension Card {
    static var cardList: [Card] = [
        Card(name: "삼성 ID ON", imgName: "Samsung_iDON"),
        Card(name: "삼성 ID PET", imgName: "Samsung_iDPET"),
        Card(name: "삼성 taptap O", imgName: "Samsung_taptapO"),
        Card(name: "삼성 NaverPay", imgName: "Samsung_NaverPay")
    ]
}


struct CompanyName: Identifiable {
    var id = UUID()
    var name: String
}

extension CompanyName {
    static var CompanyList: [CompanyName] = [
        CompanyName(name: "현대"),
        CompanyName(name: "삼성"),
        CompanyName(name: "신한"),
        CompanyName(name: "국민"),
        CompanyName(name: "우리"),
        CompanyName(name: "농협"),
        CompanyName(name: "하나")
    ]
}
