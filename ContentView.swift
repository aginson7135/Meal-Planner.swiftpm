import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Meal Planner")
            
            NavigationStack{
                
                NavigationLink ("Current Meal Plan"){
                    MealView()
                }
                
                NavigationLink ("Calorie Tracker") {
                    CalorieView()
                }
                
                NavigationLink ("More Information") {
                    DietaryInformationView()
                }
                
                NavigationLink ("Past Meal Plans") {
                    PastView()
                }
                
                NavigationLink("Recipe Links") {
                    RecipieLinks()
                }
                Button("edit"){
                    
                }
            }
       
        }
    }
}
