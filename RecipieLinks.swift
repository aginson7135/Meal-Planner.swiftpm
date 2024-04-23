//
//  RecipieLinks.swift
//  Meal Planner
//
//  Created by Aneena Ginson on 4/19/24.
//

import Foundation
import SwiftUI
struct RecipieLinks: View {
    @Binding var recipieLinks: URL(string: "https")
    var body: some View {
        VStack {
        Link("Recipie Links", destination: recipieLinks)
        }
    }
}
