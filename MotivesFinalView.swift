//
//  MotivesFinalView.swift
//  Meal Planner
//
//  Created by Abby Tharakan on 5/3/24.
//

import Foundation
import SwiftUI

struct MotivesFinalView: View {
    
    @State var totalMotives: [Motives] = []
    
    var body: some View{
    Text("Motives")
        
    MotivesOverView(totalMotives: $totalMotives)
        
        List($totalMotives, id: \.self) { currentMotives in
            MotiveView(currentMotives: currentMotives)
        }
    }
}

