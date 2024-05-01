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
    @AppStorage("save") var save: String = ""
    var body: some View {
        HStack {
            TextField("Meal", text: $mealMeal)
                .textFieldStyle(.roundedBorder)
            TextField("Time", text: $mealTime)
                .textFieldStyle(.roundedBorder)
            TextField("Calories", text: $mealCal)
                .textFieldStyle(.roundedBorder)
            
            Button("edit"){
              //  .alert("is about to edit", isPresented: $ShowAlert
              //  ){
                    
                }
            Button("save"){
                UserDefaults.standard.setValue(save, forKey: "press to save")
            }
           
                
            
        }
    }
}
