//
//  ContentView.swift
//  Shared
//
//  Created by Mobile Apps on 8/24/21.
//

import SwiftUI

struct ContentView: View {
    @State private var increment = 0
    @State private var display = "0"
    @State private var color = Color.black
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
        
        Text(display)
            .font(.system(size: 128))
            .multilineTextAlignment(.center)
            .preferredColorScheme(.dark)
            .onTapGesture {
                increment += 1
                display = "\(increment)"
                if(increment % 3 == 0)
                {
                    display = "Foo"
                    color = Color.green
                }
                if(increment % 5 == 0)
                {
                    display = "Bar"
                    color = Color.yellow
                }
                if(increment % 3 == 0 && increment % 5 == 0)
                {
                    display = "Foo Bar"
                    color = Color.red
                }
            }
            .onLongPressGesture {
                increment = 0
                display = "0"
                color = Color.black
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}

