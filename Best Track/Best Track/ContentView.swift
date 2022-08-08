//
//  ContentView.swift
//  Best Track
//
//  Created by dhuha kaweyani on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var GameDev = ""
    @State var Pic = "qq"
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.indigo, .white]), startPoint: .topLeading, endPoint: .bottomLeading).ignoresSafeArea()
            
            VStack{
                Text("ما هو المسار المفضل لديك؟").font(.custom("elmessiri-medium", fixedSize: 30))
                Image(Pic).resizable().frame(width: 300.0, height: 250)
                    .padding().padding()
                Text("GameDev").frame(width: 200, height: 40).background(.cyan).cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        if Pic == "qq"
                        {Pic = "game"}
                        else
                        {Pic = "game"}
                    }
                    .onLongPressGesture{Pic = "qq"}
                Text("Android")
                    .frame(width: 200, height: 40).background(.red).cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        if Pic == "qq"
                        {Pic = "android"}
                        else{Pic = "android"}
                    }
                    .onLongPressGesture{Pic = "qq"}
                Text("iOS").frame(width: 200, height: 40).background(.blue).cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        if Pic == "qq"
                        {Pic = "iOS"}
                        else{Pic = "iOS"}
                    }
                    .onLongPressGesture{Pic = "qq"}
                Text("Web").frame(width: 200, height: 40).background(.green).cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        if Pic == "qq"
                        {Pic = "web"}
                        else{Pic = "web"}
                    }
                    .onLongPressGesture{Pic = "qq"}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
