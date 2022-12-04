//
//  BenefitSearchInitialView.swift
//  CardMoa
//
//  Created by l1004ga on 2022/11/29.
//

import SwiftUI

struct BenefitSearchInitialView: View {
    
    let roundRectangle : RoundRectangle = RoundRectangle()
    
    var body: some View {
        VStack{
            Text("최근 검색어").font(.title2).padding(.leading, -180).fontWeight(.bold)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    Text("파리바게뜨").modifier(roundRectangle)
                    Text("롯데월드").modifier(roundRectangle)
                    Text("교보문고").modifier(roundRectangle)
                    Text("스타벅스").modifier(roundRectangle)
                    Text("커피빈").modifier(roundRectangle)
                    Text("아웃백").modifier(roundRectangle)
                    Text("쿠팡").modifier(roundRectangle)
                    Text("버거킹").modifier(roundRectangle)
                }
            }.padding(.leading)
            
            Image("banner")
                .resizable()
                .frame(width: 350, height: 120)
                .cornerRadius(10)
                .padding([.top])
            
            Rectangle().frame(height : 10).foregroundColor(.lightGray).padding([.top])
            
            HStack{
                Text("인기 검색어").font(.title2).fontWeight(.bold)
                Spacer()
                Text("더보기").foregroundColor(.gray).underline()
            }.padding()
            VStack{
                HStack{
                    Text("1").font(.system(size: 20)).fontWeight(.bold).foregroundColor(.myColor)
                    Text("파리바게뜨")
                    Text("카페&베이커리").font(.system(size: 15)).foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrowtriangle.up.fill").foregroundColor(.myColor)
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                HStack{
                    Text("2").font(.system(size: 20)).fontWeight(.bold)
                    Text("롯데월드")
                    Text("여행&레저").font(.system(size: 15)).foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrowtriangle.up.fill").foregroundColor(.myColor)
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                HStack{
                    Text("3").font(.system(size: 20)).fontWeight(.bold)
                    Text("스타벅스")
                    Text("카페&베이커리").font(.system(size: 15)).foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill").foregroundColor(.indigo)
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                HStack{
                    Text("4").font(.system(size: 20)).fontWeight(.bold)
                    Text("쿠팡")
                    Text("쇼핑").font(.system(size: 15)).foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill").foregroundColor(.indigo)
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                HStack{
                    Text("5").font(.system(size: 20)).fontWeight(.bold)
                    Text("교보문고")
                    Text("도서").font(.system(size: 15)).foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrowtriangle.up.fill").foregroundColor(.myColor)
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
            }
            Spacer()
        }
    }
}

struct RoundRectangle : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10)).background(Color.lightPink).cornerRadius(30).foregroundColor(.myColor).fontWeight(.semibold)
    }
}

struct BenefitSearchInitialView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitSearchInitialView()
    }
}
