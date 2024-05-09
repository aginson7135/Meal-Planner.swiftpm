//
//  MealView.swift
//  Meal Planner
//
//  Created by Haasini Police on 4/23/24.
//

import Foundation
import SwiftUI
struct MealView: View {
    @State var mealMeal: String = ""
    @State var mealTime: String = ""
    @State var mealCal: String = ""
    @Binding var meals: [InputMeals]
   
    var body: some View {
        VStack {
            TextField("Meal", text: $mealMeal)
                .textFieldStyle(.roundedBorder)
            TextField("Time", text: $mealTime)
                .textFieldStyle(.roundedBorder)
            TextField("Calories", text: $mealCal)
                .textFieldStyle(.roundedBorder)
            
        
                
            Button("+"){
                let newInputMeals = InputMeals(time: mealTime, meal: mealMeal, cals: mealCal)
                meals.append(newInputMeals)
                
                //mealTime = ""
               // mealCal = ""
            //  mealMeal = ""
            }
           
                
            
        }
    }
}
