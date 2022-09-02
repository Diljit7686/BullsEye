//
//  ContentView.swift
//  bullsEye
//
//  Created by Diljit Singh on 2022-08-25.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🏹🏹🏹 \n put the bulls eye as close as you can to")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            
                .padding()
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
                

            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
    
            Button(action: {
                 print("Hello SwiftUI")
                    self.alertIsVisible = true
            })
            {
            Text("HIT ME")
             .bold()
            }
           
            .padding(22.0)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
    
            .alert(isPresented: $alertIsVisible, content:
                    {
              let rounderValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("helloo there"), message: Text("Slider value is \(rounderValue). \n" + "You Scored \(self.game.points(sliderValue: rounderValue)) points this round"), dismissButton: .default(Text("awesome !!!!")))
                
            })
           
            }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
}
