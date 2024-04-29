//
//  RecipieLinks.swift
//  Meal Planner
//
//  Created by Aneena Ginson on 4/19/24.
//

import Foundation
import SwiftUI
import SafariServices

struct RecipieLinks: UIViewControllerRepresentable {
    func  makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController (url: URL(string: "https://www.foodnetwork.com/healthy/packages/healthy-every-week/healthy-mains/foodnetwork-most-saved-healthy-recipes")!)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

//struct RecipieLinks: View {
  //  @State var recipieLinks = URL(string: "https://www.foodnetwork.com/healthy/packages/healthy-every-week/healthy-mains/foodnetwork-most-saved-healthy-recipes")
   // var body: some View {
       
        
        
        //VStack {
            
     //       Link("Recipie Links", destination: recipieLinks!)
            
       //     Link(destination: recipieLinks!,
         //        label: {
           //     Image(systemName: "link")
           // })
            
       // }
  //  }
    
//}
