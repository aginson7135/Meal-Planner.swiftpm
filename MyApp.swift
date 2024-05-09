import SwiftUI

@main
struct MyApp: App {
    
    
    
   // @State var mealMeal: String = ""
   // @State var mealTime: String = ""
   // @State var mealCal: String = ""
   // @State var meals: [InputMeals] = []
    
    var body: some Scene {
        WindowGroup {
            ContentView(mealMeal: $mealMeal, mealTime: $mealTime, mealCal: $mealCal, meals: $meals, currentMotives: <#Motives#>)
        }
    }
}
