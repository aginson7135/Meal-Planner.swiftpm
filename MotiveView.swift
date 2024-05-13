//
//  MotiveView.swift
//  Meal Planner
//
//  Created by Abby Tharakan on 5/1/24.
//

import Foundation
import SwiftUI
struct MotiveView: View {
    
    @Binding var currentMotives: Motives
    
    var body: some View {
        Text ("Motivation: \(currentMotives.motive)")
        
    }
}

