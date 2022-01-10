//
//  ContentView.swift
//  Guess The Flag
//
//  Created by THANSEEF on 08/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //VStack(spacing: 20) is used to space between the inside fields
        //VStack(alignment: .leading) is used to change the position of the field inside the stack
        //HStack {} for horizontal
        //VStack {} for vertical
        //ZStack {} to place a field top of another field
//        VStack{
//            HStack{
//                Text("1")
//            }
//            HStack{
//                Text("2")
//            }
//            HStack{
//                Text("3")
//            }
//        }
//        ZStack{
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)//maxWidth: .infinity is gd when you don't know the size of the sreen
//            Text("Testing")
////            Color(red: 1, green: 0.8, blue: 0)
//        }
//        ZStack {
//            Color.red
//            Text("Your content")
//        }
//        .ignoresSafeArea() is used to cover the screen bottom side and top area.
        
        ZStack {
            VStack(spacing: 0) { // spacing 0 is used to make both color fields to connect together
                Color.red
                Color.blue
                Color.green
                Color.orange
                
            }
            Text("Glass Effect")
                .foregroundStyle(.secondary)// this field will provide a glass effect
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
//            LinearGradient(gradient: Gradient(stops: [
//                    Gradient.Stop(color: .white, location: 0.45),
//                    Gradient.Stop(color: .black, location: 0.55),
//                ]), startPoint: .top, endPoint: .bottom)
            
//            LinearGradient(gradient: Gradient(stops: [
//                    .init(color: .white, location: 0.45),
//                    .init(color: .black, location: 0.55),
//                ]), startPoint: .top, endPoint: .bottom)
            
//            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius:             20, endRadius: 200)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
