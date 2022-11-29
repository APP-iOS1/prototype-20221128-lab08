//
//  NoCardResultView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/29.
//

import SwiftUI

struct NoCardResultView: View {
    
    @Binding var search : String
    
    var body: some View {
        VStack{
            Image("Cards").resizable().frame(width: 200, height: 200)
            Text("\(search)").foregroundColor(.myColor) + Text(" 결제에")
            Text("혜택이 있는 카드가 없어요")
        }.fontWeight(.bold).font(.system(size: 20))
    }
}

struct NoCardResultView_Previews: PreviewProvider {
    static var previews: some View {
        NoCardResultView(search: .constant("파리바게뜨"))
        //.constant는 프리뷰에 변수를 보여주기 위한 메서드
    }
}
