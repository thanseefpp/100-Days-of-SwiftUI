//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by THANSEEF on 10/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scoreValue = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var totalScore = 0
    @State private var resetValue = false
    @State private var resetTitle = ""
    @State private var count = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy","Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
            RadialGradient(stops:[
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Guess The Flag")
//                    .font(.largeTitle.weight(.bold))
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
//                    .padding(.vertical,50)
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy)) // font style change
                        Text(countries[correctAnswer])
                            .foregroundColor(.black)
                            .font(.largeTitle.weight(.semibold)) // changed font style
                    }
                    ForEach(0..<3) { number in
                         Button{
                             flagTapped(number)
                         }label: {
                             Image(countries[number])
                                 .renderingMode(.original) // to get the exact quality of the image
                                 .clipShape(Capsule()) // capusle type image style
                                 .shadow(radius: 7) // shadow with radius will show some shadow effect behind the image.
                         }
                    }
                }
                .frame(maxWidth:.infinity)
                .padding(.vertical,20)
                .background(.thinMaterial)// user regularMaterial or thinMaterial(for light view)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer() //
                Spacer() // used to take more space
                
                Text("Score: \(totalScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
                
            }
            .padding() // this will look the stack look away from screen
        }
        
        .alert(scoreTitle, isPresented: $scoreValue){
            Button("Continue", action: askQuestion)
        }message: {
            Text("Your Score is \(score)")
        }
        
        .alert(resetTitle, isPresented: $resetValue){
            Button("Reset",action: reset)
        }message: {
            Text("Reset Your Game 🥺")
        }
    }
    // functions should be write outside the body closure.
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score = 10
            totalScore += score
            
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
            score = 0
            if totalScore == 0{
                totalScore = 0
            }else{
                totalScore -= 10
            }
        }
        count += 1
        if count == 8 {
            resetTitle = "Total Number of chance reached"
            resetValue = true
            scoreValue = false
        }else{
            scoreValue = true
        }
        
//        print(count)
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func reset() {
//        print("Game has been restarted")
        totalScore = 0
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
