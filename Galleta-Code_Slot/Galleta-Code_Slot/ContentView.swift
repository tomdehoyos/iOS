//
//  ContentView.swift
//  Galleta-Code_Slot
//
//  Created by Tomas De Hoyos Robles  on 23/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    var body: some View {
        
        ZStack {
            //fondo
            Rectangle().foregroundColor(Color(red:253/255, green: 198/255, blue: 205/255))
                .edgesIgnoringSafeArea(.all)
            
            //otro rectangulo
            Rectangle()
                .foregroundColor(Color(red: 165/255, green: 193/255, blue: 242/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                
                 //Test
                 HStack {
                 Spacer()
                 Image("logob")
                    /*
                 .resizable()
                 .aspectRatio(1, contentMode: .fit)
                 //.background(Color.white.opacity(0.5))
                 .cornerRadius(20)
                    */
                    .resizable()
                    .aspectRatio(2, contentMode: .fit)
                    .cornerRadius(20)
                    
                 }
                 
                
                Spacer()
                
                //tittlle
                HStack {
                    Image(systemName: "sparkle")
                        .foregroundColor(.yellow)
                    Text("Premios")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "sparkle")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                //contador
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                 
                //imageness
                HStack{
                    Spacer()
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                //Button
                Button(action: {
                    self.credits += 1
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all,10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                    
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
