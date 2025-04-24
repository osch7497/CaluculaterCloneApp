//
//  ContentView.swift
//  legendsampleproject
//
//  Created by 초천재귀요미크리쳐 on 4/3/25.
//

import SwiftUI
    
struct ContentView: View {
    let buttonTitle : [[String]] = [
        ["AC","+/-","%","÷"],
        ["1","2","3","÷"],
        ["4","5","6","×"],
        ["7","8","9","+"],
        [" ","0",".","="],
    ]
    var body: some View {
        ZStack(){
            Color.black.ignoresSafeArea()
            VStack{
                ForEach(0..<buttonTitle.count, id:\.self){index in
                    HStack{
                        ForEach(0..<buttonTitle[index].count, id:\.self){column in
                            Button{} label:{
                                Text(buttonTitle[index][column])
                                    .multilineTextAlignment(.center)
                                    .frame(width: 80,height: 80)
                                    .foregroundColor(.white)
                                    .background(Color.customGray)
                                    .cornerRadius(40)
                                    .font(.system(size:30))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
