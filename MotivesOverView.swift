//
//  MotivesOverView.swift
//  Meal Planner
//
//  Created by Abby Tharakan on 5/3/24.
//

import Foundation
import SwiftUI

struct MotivesOverView: View {
    
    @State var newMotive: String = ""
    @Binding var totalMotives: [Motives]
    
    var body: some View{
        VStack{
            TextField("Enter", text: $newMotive) .textFieldStyle(.roundedBorder)
            
            Button("+") {
                let newMotive = Motives (motive: newMotive)
                totalMotives.append(newMotive)
                
              //  newMotive = ""
            }
        }
    }
    
}

//MealView
