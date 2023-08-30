//
//  ContentView.swift
//  cinemaAR
//
//  Created by Pablo Fernandez Gonzalez on 30/8/23.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ejemplo RealtyKit")
                    .font(.title)
                List {
                    NavigationLink(
                        destination: CinemaARView(),
                        label: {
                            Text("Cinema")
                                .font(.headline)
                        })
                }
            }.navigationTitle("")
                .navigationBarHidden(true)
                .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
