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
                NavigationLink ("Link to Calorie Tracker") {
                    CalorieView()
                }
                
                NavigationView {
                    NavigationLink{
                        DietaryInformationView()
                    }label: {
                        Text("Link to More Information")
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
}
