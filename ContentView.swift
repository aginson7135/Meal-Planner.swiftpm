import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Meal Planner")
            NavigationView {
                NavigationLink{
                    MealView()
                }label: {
                    Text("Link to Current Meal Plan")
                }
            }
            
            NavigationView {
                NavigationLink{
                    CalorieView()
                }label: {
                    Text("Link to Calorie Tracker")
                }
            }
            
            NavigationView {
                NavigationLink{
                    PastView()
                }label: {
                    Text("Link to Past Meal Plans")
                }
            }
            
        }
    }
}
