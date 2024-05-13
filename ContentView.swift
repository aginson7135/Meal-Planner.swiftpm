import SwiftUI

struct ContentView: View {
    
  //  @State var mealMeal: String
    //@State var mealTime: String
  //  @State var mealCal: String
  //  @Binding var meals: [InputMeals]
   // @State var meals: [InputMeals] = []
    @State var ShowAlert = false
    @State var currentMotives: Motives = Motives(motive: "")
    @State var currentTime: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State  var currentMeal: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State var currentCals: InputMeals = InputMeals(time: "", meal: "", cals: "")
    
    
    var body: some View {
        VStack {
            
            Text("Meal Planner")
                .foregroundColor(.purple)
                                .bold()
                                .font(.custom("Georgia", size: 100))
                                                .padding(30)
            
            NavigationStack{
                
                NavigationLink ("Meal Plan"){
                    MealFinalView()
                        .foregroundColor(.purple)
                                        .bold()
               // mealMeal: mealMeal, mealTime: mealTime, mealCal: mealCal, meals: $meals
                }
                
                NavigationLink ("Motives") 
                {
                    MotivesFinalView()
                        .foregroundColor(.purple)
                                        .bold()
                    
                }
                
                
                NavigationLink ("More Information") {
                    DietaryInformationView()
                        .foregroundColor(.purple)
                                        .bold()
                }
                
                
                NavigationLink("Recipe Links") {
                    RecipieLinks()
                        .foregroundColor(.purple)
                                        .bold()
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
                .alert("\($currentMotives.motive)", isPresented: $ShowAlert) {
                    Button("Yay!") {
                       // motive = ""
                    }
                }
                
            }
            
        }
    }
    
}
