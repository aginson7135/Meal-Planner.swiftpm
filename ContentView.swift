import SwiftUI

struct ContentView: View {
    
    @Binding var mealMeal: String
    @Binding var mealTime: String
    @Binding var mealCal: String
    @Binding var meals: [InputMeals]
    @State var ShowAlert = false
    @State var motive = ""
    
    
    var body: some View {
        VStack {
            
            Text("Meal Planner")
            
            NavigationStack{
                
                NavigationLink ("Current Meal Plan"){
                    MealView(mealMeal: mealMeal, mealTime: mealTime, mealCal: mealCal, meals: $meals)
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
                
                .alert("GO EAT", isPresented: $ShowAlert) {
                    Button("Okay") {
                        motive = ""
                        
                    }
                }
                
            }
            
        }
    }
    
}
