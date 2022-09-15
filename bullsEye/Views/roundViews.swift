//
//  roundViews.swift
//  bullsEye
//
//  Created by Diljit Singh on 2022-09-11.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
           // .foregroundColor(Color("TextColor"))
          //  .foregroundColor(Color.blue)
            .frame(width: 56.0, height: 56.0)
            .overlay(
            Circle()
                .strokeBorder(Color("ButtonStrokeColor"),
                              lineWidth: 2.0)
            
            )
            
    
    }
}

struct RoundedImageViewFilled: View{
    var systemName: String
    
    var body: some View{
        Image(systemName: systemName)
            .font(.title)
           // .foregroundColor(Color("TextColor"))
           // .foregroundColor(Color.white)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            
            .background(
            Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
            
            )
        
    }
}
struct PreviewView: View {
    var body: some View {
        
        VStack(spacing: 10){
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            
        }
    }
}


struct roundViews_Previews: PreviewProvider {
    static var previews: some View {
       
            
            PreviewView()
            PreviewView()
                .preferredColorScheme(.dark)
        
        
    }
}
