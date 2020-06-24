//
//  ContentView.swift
//  NadeemCard
//
//  Created by Nadeem Ansari on 6/13/20.
//  Copyright © 2020 Nadeem Ansari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.93, green: 0.51, blue: 0.23)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nadeem")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Nadeem Ansari")
                    .font(Font.custom("Pacifico-Regular", size: 45))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                Capsule()
                    .fill(Color.white)
                    .padding(10)
                    .frame(height: 60, alignment: .center)
                    .overlay(
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(Color(red: 0.93, green: 0.51, blue: 0.23))
                            Text("+1 123.456.7890")
                                .font(.title)
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
