//
//  MealView.swift
//  Meal Planner
//
//  Created by Haasini Police on 4/23/24.
//

import Foundation
import SwiftUI
struct MealView: View {
    @State var newMeal: String = ""
    @State var newTime: String = ""
    @State var newCal: String = ""
    @Binding var meals: [InputMeals]
   
    var body: some View {
        VStack {
            TextField("Meal", text: $newMeal)
                .textFieldStyle(.roundedBorder)
            TextField("Time", text: $newTime)
                .textFieldStyle(.roundedBorder)
            TextField("Calories", text: $newCal)
                .textFieldStyle(.roundedBorder)
            
        
                
            Button("+"){
                let newInputMeals = InputMeals(time: newTime, meal: newMeal, cals: newCal)
                meals.append(newInputMeals)
                
                //mealTime = ""
               // mealCal = ""
            //  mealMeal = ""
            }
           
                
            
        }
    }
}

//MotivesOverView
