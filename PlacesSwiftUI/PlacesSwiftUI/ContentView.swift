//
//  ContentView.swift
//  PlacesSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 21/08/21.

// THE APP WIZARD
// Instagram :
// theappwizard2408


struct ContentView: View {
    
    var body: some View {
        MainView()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


























import SwiftUI

struct MainView: View {
    @State var isToggle: Bool = false
    
    var body: some View {
       
        ZStack{
            //Background
            Color.black
            
                Header()
                    .offset(x: 0, y: 0)
                DrawerView()
                    .offset(x: -650, y: 320)

            
            Button(action: {
                self.isToggle.toggle()
                     }) {
                
                 ButtonViewF()
                     }  .offset(x: -320, y: 320)

                     if isToggle {
                        ZStack{
                             Combined()
                             }
                        }
            
            
            
            
           // MapViewAnimation().offset(x: 0, y: -160)
            
                    }
            }
}





struct Header: View {
       @State var imageparallax  = false
     
    var body: some View {
        ZStack{
            
            
            Image("background")
                .resizable()
                .frame(width: 1500, height: 1300, alignment: .center)
                .offset(x: imageparallax ? 30 : -30, y: imageparallax ? 0 : -20)
                .opacity(1)
                
            
            
            Text("PLACES")
                .font(.system(size: 200, weight: .bold, design: .default))
                .foregroundColor(.white)
                .offset(x: 0, y: -250)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                .blur(radius: imageparallax ? 0 : 30)
    
            Image("mountain1")
                .resizable()
                .frame(width: 900, height: 900, alignment: .center)
                .offset(x: imageparallax ? -180 : -200, y: 150)
                .opacity(0.9)
               
            
            Image("mountain2")
                .resizable()
                .frame(width: 900, height: 600, alignment: .center)
                
                .offset(x: imageparallax ? 90 : 100, y: 350)
                .shadow(color: .black, radius: 1, x: 0.0, y: 0.0)
                .opacity(1)
        
            
            
            Rectangle().frame(width: 810, height: 80, alignment: .center)
                .offset(x: 0, y: 640)
            
            
            
        }
        .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true))
            .onAppear() {
                self.imageparallax.toggle()
        }
    
    }
}

struct Combined: View {
    @State private var drawerAnimation = false
    @State private var buttonAnimation = false
    
    var body: some View {
        ZStack{
            DrawerV()
              
            ButtonViewF()
                .rotationEffect(.degrees(buttonAnimation ? 180 : 0))
                .animation(Animation.easeInOut(duration: 2).repeatCount(1))
                .onAppear() {
                self.buttonAnimation.toggle()
                    }
                .offset(x: 320, y: 0)
        }
        .offset(x: drawerAnimation ? -200 : -640, y: 320)
            .animation(Animation.easeInOut(duration: 2).repeatCount(1))
            .onAppear() {
            self.drawerAnimation.toggle()
                }
            
    }
}





struct ButtonViewF: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            Image(systemName: "chevron.forward")
                .resizable()
                .frame(width: 35, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
        }
    }
}

