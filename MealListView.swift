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
        
            Text("Time: \(mealOne.time)")
                .font(.title)
            Text("Meal: \(mealOne.meal)")
                .font(.title)
            Text("Calories: \(mealOne.cals)")
        }
    }

