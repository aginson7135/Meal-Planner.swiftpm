//
//  CalorieView.swift
//  Meal Planner
//
//  Created by Abby Tharakan on 4/23/24.
//

import Foundation
import SwiftUI
struct CalorieView: View {
    @AppStorage("+") var button: String = ""
    var body: some View {
        Text ("Today:")
        
        
        Text("This Week:")
        
        Text("Next Week:")
        Button("+") {
            UserDefaults.standard.setValue(button, forKey: "add")
            
        }
    }
}
