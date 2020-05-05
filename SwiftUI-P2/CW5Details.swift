//
//  CW5Details.swift
//  SwiftUI-P2
//
//  Created by MOHD ALARBASH on 5/5/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct CW5Details: View {
    var movieName: String
    var mainCharacters: [String]
    var movieImage: UIImage
    var body: some View {
        ZStack{
            Group{
                Image(uiImage: movieImage)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center){
                Image(uiImage: movieImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300)
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                //                    .padding()
                
                
                Text(movieName)
                    .font(.system(size: 50))
                    .bold()
                Text(mainCharacters.joined(separator: ", "))
                    .font(.title)
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
            
        }
        
    }
}

struct CW5Details_Previews: PreviewProvider {
    static var previews: some View {
        CW5Details(movieName: "Toy Story", mainCharacters: ["Woody", "Buzz" , "Yoo"], movieImage: #imageLiteral(resourceName: "toystory"))
    }
}
