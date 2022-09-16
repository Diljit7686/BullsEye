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




struct RoundRectTextView: View{
    var text: String
    
    var body: some View{
        
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68.0, height: 56.0)
            .foregroundColor(Color("textViewColor"))
            .overlay(
            
                RoundedRectangle(cornerRadius: 21.0)
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ButtonStrokeColor"))
                
                
            )
        
    }
    
    
    
    struct PreviewView: View {
        var body: some View {
            
            VStack(spacing: 10){
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
                RoundedImageViewFilled(systemName: "list.dash")
                RoundRectTextView(text: "rect")
                
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
}
