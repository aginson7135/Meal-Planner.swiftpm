import SwiftUI

struct ContentView: View {
    
   // @Binding var mealMeal: String
   // @Binding var mealTime: String
   // @Binding var mealCal: String
   // @Binding var meals: [InputMeals]
    @State var meals: [InputMeals] = []
    @State var ShowAlert = false

    
    
    var body: some View {
        VStack {
            
            Text("Meal Planner")
            
            NavigationStack{
                
                NavigationLink ("Meal Plan"){
                    MealView(meals: $meals)
               // mealMeal: mealMeal, mealTime: mealTime, mealCal: mealCal, meals: $meals
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
                    ShowAlert = true
                }, label: {
                    Text("Motivate Me!")
                })
                .alert("Motivation of the Day", isPresented: $ShowAlert) {
                    Button("Yay!") {
                       // motive = ""
                    }
                }
                
            }
            
        }
    }
    
}
