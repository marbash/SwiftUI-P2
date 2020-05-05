//
//  ClassWork5.swift
//  SwiftUI-P2
//
//  Created by MOHD ALARBASH on 5/4/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI
import UIKit

struct ClassWork5: View {
    var moviewName: [String] = ["Alaadin","Coco","Toy Story"]
    // var characters: [String] = [["Aladdin", "Jasmin", "Genie"],["Aladdin", "Jasmin", "Genie"],["Aladdin", "Jasmin", "Genie"]]
    var  movieImage: [UIImage] = [#imageLiteral(resourceName: "Alaadin"),#imageLiteral(resourceName: "coco"),#imageLiteral(resourceName: "toystory")]
    var body: some View {
        NavigationView{
       List{
        NavigationLink(destination: CW5Details(movieName: moviewName[0], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[0] )) {
            MovieRow(movieName: moviewName[0], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[0])
        }
        NavigationLink(destination: CW5Details(movieName: moviewName[1], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[1] )) {
            MovieRow(movieName: moviewName[1], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[1])
        }
        NavigationLink(destination: CW5Details(movieName: moviewName[2], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[2] )) {
            MovieRow(movieName: moviewName[2], mainCharacters: ["Aladdin", "Jasmin", "Genie"], movieImage: movieImage[2])
        }

         //MovieRow(movieName: moviewName[1], mainCharacters: ["Coco", "Jasmin", "Genie"], movieImage: movieImage[1] )
         //MovieRow(movieName: moviewName[2], mainCharacters: ["Woody", "Buzz Light Year"], movieImage: movieImage[2])
        }
            .navigationBarTitle("Movies")

        }


    }
}

struct ClassWork5_Previews: PreviewProvider {
    static var previews: some View {
        ClassWork5()
    }
}

struct MovieRow: View {
    var movieName: String
       var mainCharacters: [String]
       var movieImage: UIImage

    var body: some View {
        HStack(alignment: .center){
           Image(uiImage:  movieImage)
            .resizable()
            .scaledToFit()
            .frame(height: 100)
            .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                 Text(mainCharacters.joined(separator: ","))

            }
        }.padding(.vertical)
    }

}
