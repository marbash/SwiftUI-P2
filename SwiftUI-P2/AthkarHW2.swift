//
//  AthkarHW2.swift
//  SwiftUI-P2
//
//  Created by MOHD ALARBASH on 5/5/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct AthkarHW2: View {
    @State var Counter: [String] = ["0","0","0"]
    var Athkr = ["اللّهُ  إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.","اللّهُ  إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.","اللّهُ  إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ."]
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AthkarHW2Details(Counter: $Counter[0])) {
                    AthkarRow(Counter: $Counter[0], athkar: Athkr[0])
                }
                NavigationLink(destination: AthkarHW2Details(Counter: $Counter[1])) {
                                   AthkarRow(Counter: $Counter[1], athkar: Athkr[1])
                               }
                NavigationLink(destination: AthkarHW2Details(Counter: $Counter[2])) {
                                   AthkarRow(Counter: $Counter[2], athkar: Athkr[2])
                               }
            }
            .navigationBarTitle("Athkar")
        }
    }
}

struct AthkarHW2_Previews: PreviewProvider {
    static var previews: some View {
        AthkarHW2()
    }
}

struct AthkarRow: View {
    @Binding var Counter: String
    var athkar: String
    var body: some View {
        VStack{
            Text(athkar)
            Text("\(Counter)")
                
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .clipShape(Circle())
                .foregroundColor(.white)
            
        }
    }
}
