import SwiftUI

struct ContentView: View {
    
    @Binding var mealMeal: String
    @Binding var mealTime: String
    @Binding var mealCal: String
    @Binding var meals: [InputMeals]
    @State private var ShowAlert = false
    @State private var currentMotives: Motives
    
    
    var body: some View {
        VStack {
            
            Text("Meal Planner")
            
            NavigationStack{
                
                NavigationLink ("Meal Plan"){
                    MealView(mealMeal: mealMeal, mealTime: mealTime, mealCal: mealCal, meals: $meals)
                }
                
                NavigationLink ("Motives") {
                    MotivesFinalView()
                }
                
                
                NavigationLink ("More Information") {
                    DietaryInformationView()
                }
                
                
                NavigationLink("Recipe Links") {
                    RecipieLinks()
                }
                
             //   .alert("GO EAT", isPresented: $ShowAlert) {
               //     Button("Okay") {
                 //       motive = ""
                   // }
             //   }
                
                Button(action: {
                    self.ShowAlert = true
                }, label: {
                    Text("Motivate Me!")
                })
                .alert("\(currentMotives.motive)", isPresented: $ShowAlert) {
                    Button("Yay!") {
                       // motive = ""
                    }
                }
                
            }
            
        }
    }
    
}
