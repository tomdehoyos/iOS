//
//  ContentView.swift
//  El_Frasco_De_Galletas
//
//  Created by Tomas De Hoyos Robles  on 08/05/21.
//  Copyright © 2021 Tomas De Hoyos Robles . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private var symbols = ["muñe","cora","galleta"]
    @State private var numbers = [0,1,2]
    @State private var credits = 1000
    private var betAmount = 5
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
                
                 .resizable()
                 .aspectRatio(2, contentMode: .fit)
                 .cornerRadius(20)
                    
                    /*
                 Image("logo")
                    .resizable()
                    .aspectRatio(2, contentMode: .fit)
                .background(Color.white.opacity(0.7))
                    .cornerRadius(20)
                    */
                    
                    
                    
                 }
                 
                
                Spacer()
                
                //tittlle
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Premios")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                //contador
                Text("Puntos: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                 
                //imageness
                HStack{
                    Spacer()
                    Image(symbols[numbers[0]])
                    //Image("muñe")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                    //Image("cora")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image(symbols[numbers[2]])
                    //Image("galleta")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                //Button
                Button(action: {
                    
                    //gira gira
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    //premios
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]{
                        //victoria
                        self.credits += self.betAmount * 10
                    }
                    else {
                        self.credits -= self.betAmount
                    }
                    
                }) {
                    Text("Tócame")
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
