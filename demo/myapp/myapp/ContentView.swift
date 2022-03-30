//
//  ContentView.swift
//  myapp
//
//  Created by Vladimir Plagov on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    let myString = "Hello World"
    var body: some View {
        // This is what is displayed
        Text(myString).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
