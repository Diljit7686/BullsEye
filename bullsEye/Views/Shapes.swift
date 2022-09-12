//
//  Shapes.swift
//  bullsEye
//
//  Created by Diljit Singh on 2022-09-08.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        
        
        VStack{
            Circle()
           
             //.inset(by: 10)
             //   .fill(Color.blue)
               // .stroke(Color.white ,lineWidth: 2)
                .strokeBorder(Color.blue, lineWidth: 20.0)
           
                .frame(width: 200, height: 100)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            
        }
        .background(Color.green)
        
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
