import SwiftUI

struct ContentView: View {
    
    @State var ShowAlert = false
    @State var currentMotives: Motives = Motives(motive: "")
    @State var currentTime: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State  var currentMeal: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State var currentCals: InputMeals = InputMeals(time: "", meal: "", cals: "")
    
    
    var body: some View {
        VStack {
            
            Text("Diet Decider")
                .foregroundColor(.purple)
                .underline()
                .bold()
                .font(.system(size: 90))
            Text("add your meals!!")
                .foregroundColor(.purple)
                .underline()
                .bold()
                .font(.system(size: 50))
            
            
                .bold()
                .font(.custom("Georgia", size: 100))
                .padding(30)
                .bold()
                .minimumScaleFactor(0.5)
                .lineLimit(2)
                .multilineTextAlignment(.center)
            
            //Image("mealpic")
               // .resizable()
               // .frame(width: 430, height: 320)
               
                    }
                    
                    NavigationStack{
                        
                        NavigationLink ("Meal Plan"){
                            MealFinalView()
                                .foregroundColor(.purple)
                                .bold()
                            
                            // mealMeal: mealMeal, mealTime: mealTime, mealCal: mealCal, meals: $meals
                            
                            
                        }
                        Spacer().frame(height: 30)
                        
                        NavigationLink ("Motives")
                        {
                            MotivesFinalView()
                                .foregroundColor(.purple)
                                .bold()
                            
                            
                        }
                        Spacer().frame(height: 30)
                        
                        
                        NavigationLink ("More Information") {
                            DietaryInformationView()
                                .foregroundColor(.purple)
                                .bold()
                        }
                        Spacer().frame(height: 30)
                        
                        
                        NavigationLink("Recipe Links") {
                            RecipieLinks()
                                .foregroundColor(.purple)
                                .bold()
                        }
                        Spacer().frame(height: 30)
                        
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
                            Text("Hello")
                            Button("Yay!") {
                                // motive = ""
                            }
                            Spacer().frame(height: 30)
                            
                        }
                      
                    }
                    
                    
                  
                }
            
        }
        
  //  }
    
    
// }
