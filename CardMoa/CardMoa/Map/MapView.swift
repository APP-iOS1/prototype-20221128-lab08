//
//  MapView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI
import MapKit

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var benefit : String
    var coordinate: CLLocationCoordinate2D
}
//혜택 사용처 위도 경도 바꿔서 넣기
var pointsOfInterest = [
    AnnotatedItem(name: "스타벅스 광화문점", benefit: "5% 결제할인", coordinate: .init(latitude: 37.570548, longitude: 126.979042)),
    AnnotatedItem(name: "커피빈 광화문점", benefit: "10% 청구할인", coordinate: .init(latitude: 37.569851, longitude: 126.978983)),
    AnnotatedItem(name: "버거킹 광화문점", benefit: "3% 포인트적립", coordinate: .init(latitude: 37.572545, longitude: 126.980455)),
    AnnotatedItem(name: "파리크라상", benefit: "7% 청구할인", coordinate: .init(latitude: 37.571018, longitude: 126.977844))
]

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.571379, longitude: 126.978678),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    
    var body: some View {
            VStack {
                Map(coordinateRegion: $region, annotationItems: pointsOfInterest){
                    item in
                    //                기본 MapMarker로 표시하기
                    //                MapMarker(coordinate: item.coordinate, tint: .red)
                    //
                    //                MapAnnotation 사용해서 커스텀 마커로 표시하기
                    MapAnnotation(coordinate: item.coordinate) {
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                                .resizable()
                                .foregroundColor(.brown)
                                .frame(width: 30, height: 30)
                                .background(.white)
                                .clipShape(Circle())
                            
                            VStack{
                                Text(item.name).font(.system(size: 15)).fontWeight(.bold)
                                Text(item.benefit).font(.system(size: 13)).fontWeight(.bold).foregroundColor(.red)
                            }.padding(5).background(Color.white.opacity(0.7)).cornerRadius(10)
                        }
                    }
                }
                
            }.ignoresSafeArea(edges: .top)
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

/*
 struct AnnotatedItem: Identifiable {
 let id = UUID()
 var name: String
 var coordinate: CLLocationCoordinate2D
 }
 
 var pointsOfInterest = [
 AnnotatedItem(name: "Times Square", coordinate: .init(latitude: 40.75773, longitude: -73.985708)),
 AnnotatedItem(name: "Flatiron Building", coordinate: .init(latitude: 40.741112, longitude: -73.989723)),
 AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
 ]
 
 struct MapTabView: View {
 @State private var region: MKCoordinateRegion = MKCoordinateRegion(
 center: CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708),
 span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04)
 )
 
 var body: some View {
 NavigationStack {
 VStack {
 Map(coordinateRegion: $region,
 annotationItems: pointsOfInterest) { item in
 MapMarker(coordinate: item.coordinate, tint: .purple)
 }
 }
 .navigationTitle("Map")
 }
 }
 }
 
 
 */
