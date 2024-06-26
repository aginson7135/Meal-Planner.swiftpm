//
//  MealListView.swift
//  Meal Planner
//
//  Created by Haasini Police on 4/25/24.
//

import Foundation
import SwiftUI
struct MealListView: View {
 
    let currentMeal: InputMeals
    
    var body: some View {
        
            Text("Time: \(currentMeal.time)")
                .font(.title)
            Text("Meal: \(currentMeal.meal)")
                .font(.title)
            Text("Calories: \(currentMeal.cals)")
        }
    }
