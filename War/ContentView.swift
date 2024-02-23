//
//  ContentView.swift
//  War
//
//  Created by 64013593 on 2/11/24.
//

import SwiftUI

struct ContentView: View {
   
   @State var pCard = "card2"
    @State var cpuCard = "card3"
    @State var pScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack {
           Image("background-cloth")
                .resizable()
            VStack {
              Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(pCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {deal()}, label: {
                    Image("button")
                })
               
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                        Text(String(pScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        .padding()
        
    }
    
    func deal() {
        let pCV = Int.random(in: 2...14)
        let cpuCV = Int.random(in: 2...14)
        pCard = "card" + String(pCV)
        cpuCard = "card" + String(cpuCV)
        if pCV > cpuCV
        {
            pScore += 1
        }
        else if cpuCV > pCV
        {
            cpuScore += 1
        }
        else{
            
        }
            
    }
}

#Preview {
    ContentView()
}
