//
//  MealListView.swift
//  Meal Planner
//
//  Created by Haasini Police on 4/25/24.
//

import Foundation
import SwiftUI
struct MealListView: View {
    let mealOne: InputMeals
    var body: some View {
        VStack(alignment: .leading)
        {
            Text("\(mealOne.time)")
                .font(.title)
            Text("\(mealOne.meal)")
                .font(.title)
            Text("\(mealOne.cals)")
        }
    }
}
