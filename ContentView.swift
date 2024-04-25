import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Meal Planner")
            
            
            NavigationLink ("Link to Current Meal Plan"){
                MealView()
            }
            
            NavigationLink ("Link to Calorie Tracker") {
                CalorieView()
            }
            
            NavigationLink ("Link to More Information") {
                DietaryInformationView()
            }
            
            NavigationLink ("Link to Past Meal Plans") {
                PastView()
            }
            
            
        }
    }
}
