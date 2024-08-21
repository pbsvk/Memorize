//
//  ContentView.swift
//  Memorize
//
//  Created by Bhaskara Sai Vamsi Krishna Padala on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
                CardView()
                CardView()
            }
            .foregroundColor(.orange)
            .padding()
            HStack{
                CardView()
                CardView()
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
            }
            .foregroundColor(.orange)
            .padding()
        
        }
    }
}


struct CardView: View{
    var isFaceUp : Bool = false
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(style:  StrokeStyle(lineWidth: 10))
                Text("👻").font(.largeTitle)
            }
        } else {
            RoundedRectangle(cornerRadius: 12)
             }
             }
    }
#Preview {
    ContentView()
}
