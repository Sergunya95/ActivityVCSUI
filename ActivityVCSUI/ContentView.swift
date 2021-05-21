//
//  ContentView.swift
//  ActivityVCSUI
//
//  Created by apple on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSharePresented = false
    let customActivity = ActivityViewCustomActivity(title: "Telega", imageName: "send") {
        print("Send to TG")
    }
    
    var body: some View {
        Button("Share"){
            self.isSharePresented = true
        }.sheet(isPresented: $isSharePresented, content: {
            ActivityView(activityItems: ["можно зашарить что угодно"], aplicationActivities: [customActivity])
            
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
