//
//  ContentView.swift
//  Demo First App
//
//  Created by Chommanee Rujijanakul on 28/10/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                       Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    //Random card number
    func deal(){
        let pv = Int.random(in: 2...14)
        let cv = Int.random(in: 2...14)
        //Random player card
        playerCard = "card" + String(pv)
        //Random cpu card
        cpuCard = "card" + String(cv)
        //Return Score
        if pv > cv {
            
            //add 1 to player score
            playerScore += 1
        }else{
            
            //add 1 to cpu score
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
