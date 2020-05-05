//
//  AthkarHW2Details.swift
//  SwiftUI-P2
//
//  Created by MOHD ALARBASH on 5/5/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct AthkarHW2Details: View {
    @Binding var Counter: String
    var body: some View {
        //Text(test)
        Text(Counter)
        .frame(width: 50, height: 50)
        .background(Color.blue)
        .clipShape(Circle())
        .foregroundColor(.white)
            .onTapGesture {
                self.Counter = String(Int(self.Counter)! + 1)

    }
}
}

//struct AthkarHW2Details_Previews: PreviewProvider {
//    static var previews: some View {
//        AthkarHW2Details(Counter: "2")
//    }
//}
