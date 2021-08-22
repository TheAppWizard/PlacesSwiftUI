//
//  DrawerV.swift
//  PlacesSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 22/08/21.
//

import SwiftUI

struct DrawerV: View {
    var body: some View {
        DrawerView()
    }
}

struct DrawerV_Previews: PreviewProvider {
    static var previews: some View {
        DrawerV()
    }
}

struct DrawerView: View {
    
    @State var isToggle: Bool = false
    @State private var pin = false;
    var body: some View {
        ZStack{
            
            ZStack{
                Rectangle()
                    .frame(width: 600, height: 250, alignment: .center)
                    .opacity(1)
                
               
                   
                   
                Button(action: {
                    self.isToggle.toggle()
                         }) {
                    
                    Image("pin").resizable()
                        .frame(width: 75, height: 75, alignment: .center)
                        .opacity( 1)
                         }  .offset(x: -100, y: -10)

                         if isToggle {
                            ZStack{
                                 MapViewAnimation()
                                    .offset(x: 200, y: -460)
                                 }
                            }
                
                
               
                
                
                
                
                
                VStack{
                    Text("Dharamsala")
                        .font(.system(size: 45))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .offset(x: 30, y: 0)
                   
                    Text("Himachal Pradesh")
                        .font(.system(size: 35))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .offset(x: 40, y: 0)
                   
                    Text("India")
                        .font(.system(size: 35))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .offset(x: -54, y: 0)
                
                
                
                }
                .offset(x: 70, y: 0)
                
                
                
           
              
                }
                
                
                
            Circle()
                .trim(from: 0, to: 0.5)
                .rotation(.degrees(270))
                .frame(width: 259, height: 250, alignment: .center)
                .opacity(1)
                .offset(x: 300, y: 0)
        }
                
                
             
            
        }
            
          
            
       
    }



