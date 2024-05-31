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
    @Binding var currentMotives: Motives
    
    var body: some View {
        VStack {
            Text("Motives")
            
            MotivesOverView(totalMotives: $totalMotives)
            
                List{
                    ForEach(totalMotives, id:\.self) { currentMotives in
                        Text("\(currentMotives)")
                    }
                    .onDelete { indexSet in
                        totalMotives.remove(atOffsets: indexSet)
                    }
                }
            }
        }
    }
