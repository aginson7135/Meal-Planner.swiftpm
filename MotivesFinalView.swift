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
    
    var body: some View {
        VStack {
            Text("Motives")
                .bold()
                .font(.system(size: 30))
            
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
