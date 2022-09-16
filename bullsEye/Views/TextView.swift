//
//  TextView.swift
//  bullsEye
//
//  Created by Diljit Singh on 2022-09-08.
//

import SwiftUI

struct instructionText: View {
    var text: String
    
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
          
            .foregroundColor(Color("textViewColor"))
          
 
    }
}


struct SliderLabelText: View{
    var text: String
    
    var body: some View{
        Text(text)
           // .kerning(-1.0)
            .font(.largeTitle)
           // .fontWeight(.black)
            .foregroundColor(Color("textViewColor"))
        
    }
}


struct LabelText: View{
    var text: String
    
    var body: some View{
        Text(text)
            .kerning(1.5)
           // .font(.largeTitle)
            .font(.caption)
            
            //.fontWeight(.black)
            .foregroundColor(Color("textViewColor"))
        
    }
}






struct bigNumber: View{
    var text: String
    
    var body: some View{
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("textViewColor"))
        
    }
}

struct oneText: View{
    
    var text: String
    
    var body: some View{
        Text(text)
    
            .foregroundColor(Color("textViewColor"))
            .bold()
            .frame(width: 35.0)
       
        
    }
    }

struct hundredText: View{
    
    var text: String
    
    var body: some View{
        Text(text)
            .foregroundColor(Color("textViewColor"))
            .bold()
        
    }
    }



struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            instructionText(text: "instructions")
            bigNumber(text: "999")
            oneText(text: "one")
            hundredText(text: "Hundred")
            SliderLabelText(text: "Slider")
            LabelText(text: "Label Text")
    }
}
}

