//
//  ContentView.swift
//  SwiftUI-P2
//
//  Created by MOHD ALARBASH on 5/4/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
// Day 2

import SwiftUI


struct ContentView: View {
    @State var counter: String = "0"
    var body: some View {
        VStack{
            HStack{
                //NavigationView{
                //NavigationLink(destination: ){
                Text("أستغفر الله العظيم").font(.largeTitle)
                Button(action: {
                    self.counter = String(Int(self.counter)! + 1)
                }) {
                    Text(counter)
                    .font(.largeTitle)
                }.frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                .clipShape(Circle())
                .padding()
                }
            //}
            //}
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
