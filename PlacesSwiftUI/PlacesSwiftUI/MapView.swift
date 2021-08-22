//
//  MapView.swift
//  PlacesSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 22/08/21.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        MapViewAnimation()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct MapViewAnimation: View {
    
    @State private var mapAnimation = false
    //@State private var pinAnimation = false
   
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .opacity(0.8)
                .frame(width: 700, height: 700, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: -30)
           
            Image("map").resizable().frame(width: 590, height: 635, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Image("mapline").resizable().frame(width: 590, height: 635, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .opacity(mapAnimation ? 0 : 1)
            
            Image("pin")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: -30 , y: mapAnimation ? -290 :  -300)
            
        }
        .animation(Animation.easeInOut(duration: 1).repeatForever())
        .onAppear() {
        self.mapAnimation.toggle()
            }
    }
}

