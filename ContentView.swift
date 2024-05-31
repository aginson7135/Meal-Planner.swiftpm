import SwiftUI

struct ContentView: View {
    
    @State var ShowAlert = false
    @State var currentMotives: Motives = Motives(motive: "")
    @State var currentTime: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State  var currentMeal: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State var currentCals: InputMeals = InputMeals(time: "", meal: "", cals: "")
    @State var spin = false
    @State var rotate = 0.0
    
    
    var body: some View {
        VStack {
            
            Text("Diet Decider")
                .foregroundColor(.purple)
                .underline()
                .bold()
                .font(.system(size: 90))
            Text("Add your meals!")
                .foregroundColor(.purple)
                .bold()
                .font(.system(size: 50))
            
            
                .bold()
                .font(.custom("Georgia", size: 100))
                .padding(30)
                .bold()
                .minimumScaleFactor(0.5)
                .lineLimit(2)
                .multilineTextAlignment(.center)
            
            Button {
                       spin.toggle()
                   }label: {
                       Text("Spin Image")
                           .foregroundColor(.green)
                           .bold()
                           .font(.system(size: 30))
                   }
            Image("mealpic")
                .resizable()
                .frame(width: 300, height: 250)
                .rotationEffect(.degrees(spin ? 360 : 0))
                            .animation(.easeInOut(duration: 1), value: spin)
               
                    }
                    
                    NavigationStack{
                        
                        NavigationLink ("Meal Plan"){
                            MealFinalView()
                                .foregroundColor(.purple)
                                .bold()
                            
                            // mealMeal: mealMeal,mealCal: mealCal, mealTime: mealTime,  meals: $meals
                            
                            
                        }
                        Spacer().frame(height: 30)
                        
                        NavigationLink ("Motives")
                        {
                            MotivesFinalView(currentMotives: $currentMotives)
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
                        .alert("\(currentMotives.motive)", isPresented: $ShowAlert) { //print($currentMotives.motive)
                            Text("Hello")
                            Button("Yay!") {
                                // motive = ""
                            }
                            Spacer().frame(height: 30)
                            
                        }
                        Image(systemName: "fanblades")
                                 .font(.system(size: 80))
                                 .foregroundColor(.green)
                                 .rotationEffect(.degrees(rotate))
                               
                                 .onAppear {
                                     withAnimation(.linear(duration: 1)
                                         .speed(0.1).repeatForever(autoreverses: false)) {
                                             rotate = 360.0
                                         }
                                    
                      
                    }
       
                    
                  
                }
            
        }
        
    }
    
    
// }
