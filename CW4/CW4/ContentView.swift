//
//  ContentView.swift
//  CW4
//
//  Created by dhuha kaweyani on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var FinalGrade = ""
    @State var GradeResult = ""
    @State var GradePic = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.teal, .white]), startPoint: .topLeading, endPoint: .bottomLeading).ignoresSafeArea()
            
            VStack{
                Text("حاسبة الدرجات").font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                Image("dd").resizable().frame(width: 300.0, height: 200.0)
                    .padding()
                TextField("enter your grade", text: $FinalGrade).frame(width: 350.0, height: 65.0).background(.white)
                    .padding()
                Text("احسب درجتي")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 200.0, height: 50.0).background(Color(hue: 1.0, saturation: 0.202, brightness: 0.971))
                    .cornerRadius(20)
                
                    .onTapGesture {
                        if (Double(FinalGrade) ?? 0) >= 90
                        {GradeResult = "امتياز"
                            GradePic = "A"
                        }
                        else if
                            (Double(FinalGrade) ?? 0) >= 80 && (Double(FinalGrade) ?? 0) < 90
                        {GradeResult = "جيد جدا"
                            GradePic = "b"
                        }
                        else if
                            (Double(FinalGrade) ?? 0) >= 70 && (Double(FinalGrade) ?? 0) < 80
                        {GradeResult = "جيد"
                            GradePic = "c"
                        }
                        else if
                            (Double(FinalGrade) ?? 0) >= 60 && (Double(FinalGrade) ?? 0) < 70
                        {GradeResult = "مقبول"
                            GradePic = "d"
                        }
                        else
                        {GradeResult = "رسوب"
                            GradePic = "e"
                        }
                    }
              
                Text("لقد حصلت على درجة")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    
                    
                
                Text(GradeResult).font(.largeTitle).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.54))
                Image(GradePic).resizable().frame(width: 300.0, height: 200.0)
                    
                    .foregroundColor(Color.white)
                    
                Spacer()
            }.padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
