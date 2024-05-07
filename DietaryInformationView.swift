//
//  DietaryInformationView.swift
//  Meal Planner
//
//  Created by Haasini Police on 4/19/24.
//

import Foundation

import SwiftUI
struct DietaryInformationView: View {
    var body: some View {
        VStack {
            Text("Recomended intake of protien is 10% to 35% of total daily calories")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
            Text("Recomended intake of calories is 2,000 calories a day for women and 2,500 for men")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
            Text("Recomended intake of carbs is 45% to 65% of total daily calories")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
            Text("Recomended intake of fat is 20% to 35% of total daily calories ")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
            Text("Recomended intake of fiber is 25 to 30 grams daily")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
            Text("Recomended intake of water is about 11.5 cups a day for women and about 15.5 cups for men")
                .foregroundColor(.purple)
                .font(.custom("Didot", size: 30))
                .bold()
        }
    }
}
