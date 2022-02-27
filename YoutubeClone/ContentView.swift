//
//  ContentView.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem({
                    VStack{
                        Image("baselineHome")
                            .renderingMode(.template)
                        Text("Home")
                        
                    }
                })
            
            Text("  ")
                .tabItem({
                    VStack{
                        Image("baselineFlame")
                            .renderingMode(.template)
                        Text("treding")
                        
                    }
                })
            
            Text("  ")
                .tabItem({
                    VStack{
                        Image("baselineSubscriptions")
                            .renderingMode(.template)
                        Text("Subscriptions")
                        
                    }
                })
            
            Text("  ")
                .tabItem({
                    VStack{
                        Image("baselineMail")
                            .renderingMode(.template)
                        Text("Messages")
                        
                    }
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
