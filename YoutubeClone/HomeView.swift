//
//  HomeView.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            HomeContentView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("logo")
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            //
                        } label: {
                            Image("topCastConnected")
                        }
                        Button {
                            //
                        } label: {
                            Image("topVideocam")
                        }
                        Button {
                            //
                        } label: {
                            Image("topSearch")
                        }
                        
                       Button{
                           //
                        } label: {
                            Image("topAvatar")
                        }

                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
