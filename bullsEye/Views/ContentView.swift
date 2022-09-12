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
        ZStack {
            Color("backgroundColor")
          // Color(.gray)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
     VStack {
               instructionView(game: $game)
         sliderView(sliderValue: $sliderValue)
         hitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
         }
    }
}
                 struct instructionView: View{
                   @Binding var game: Game
        var body: some View{
            VStack{
        instructionText(text: "🏹🏹🏹 \n put the bulls eye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        bigNumber(text: String(game.target))

    }
       }
          }
                   struct sliderView: View{
                    @Binding var sliderValue: Double
        var body: some View{
             VStack{
                HStack {
                 oneText(text: "1")
                 Slider(value: self.$sliderValue, in: 1.0...100.0)
                 hundredText(text: "100")
    }
       }
          }
            }
                struct hitMeButton: View{
        @Binding var alertIsVisible: Bool
        @Binding  var sliderValue: Double
        @Binding var game: Game
    
    var body: some View{
        Button(action: {
             print("Hello SwiftUI")
                self.alertIsVisible = true
        })
        {
        Text("HIT ME")
         .bold()
         .font(.title3)
        }
       
        .padding(22.0)
        .background(ZStack {
            Color("buttonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.blue]), startPoint: .top, endPoint: .bottom)
        }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)

        .alert(isPresented: $alertIsVisible, content:
                {
          let rounderValue: Int = Int(self.sliderValue.rounded())
            return Alert(title: Text("helloo there"), message: Text("Slider value is \(rounderValue). \n" + "You Scored \(self.game.points(sliderValue: rounderValue)) points this round"), dismissButton: .default(Text("awesome !!!!")))
            
        }
        )}
               }
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
}
