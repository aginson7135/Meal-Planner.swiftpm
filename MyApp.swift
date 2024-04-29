import SwiftUI

@main
struct MyApp: App {
    
    @Binding var mealMeal: String
    @Binding var mealTime: String
    @Binding var mealCal: String
    @Binding var meals: [InputMeals]
    
    var body: some Scene {
        WindowGroup {
            ContentView(mealMeal: $mealMeal, mealTime: $mealTime, mealCal: $mealCal, meals: $meals)
        }
    }
}
