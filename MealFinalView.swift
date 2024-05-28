//
//  MealFinalView.swift
//  Meal Planner
//
//  Created by Haasini Police on 5/7/24.
//

import Foundation
import SwiftUI

struct MealFinalView: View {
    
    @State var meals: [InputMeals] = []
    
    var body: some View{
    Text("Meal Plan")
        
        MealView(meals: $meals)
        
      //  List(meals, id: \.self) { currentMeal in
        //    MealListView(currentMeal: currentMeal)
        
        List{
            ForEach(meals, id:\.self) { currentMeal in
                Text("\(currentMeal)")
            }
            .onDelete { indexSet in
                meals.remove(atOffsets: indexSet)
            }
        }
            
        }
    }
}

