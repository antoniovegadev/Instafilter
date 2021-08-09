//
//  ContentView.swift
//  Instafilter
//
//  Created by Antonio Vega on 6/4/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white

    var body: some View {
        Text("Hello, World!")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showingActionSheet = true
            }
        
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("Change Background"), message: Text("Select a new color"), buttons: [
                    .default(Text("Red")) { backgroundColor = .red },
                    .default(Text("Green")) { backgroundColor = .green },
                    .default(Text("Blue")) { backgroundColor = .blue },
                    .cancel()
                ])
            }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
