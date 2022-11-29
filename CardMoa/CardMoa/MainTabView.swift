//
//  ContentView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        
        //NavigationStack{
            TabView {
                MyCardView().tabItem {
                    Image(systemName: "creditcard")
                }.tag(1)
                CardRecommendView().tabItem {
                    Image(systemName: "list.dash.header.rectangle")
                }.tag(2)
                BenefitSearchView().tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(3)
                MapView().tabItem {
                    Image(systemName: "map")
                }.tag(4)
                ProfileView().tabItem {
                    Image(systemName: "person.crop.rectangle")
                }.tag(5)
            }
            
//            .toolbarColorScheme(.dark, for: .navigationBar, .tabBar)
//            .toolbarBackground(
//                Color.mainColor,
//                for: .navigationBar, .tabBar
//            )
//            .toolbarBackground(.visible, for: .navigationBar, .tabBar)
        //} // NavigationStack
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
