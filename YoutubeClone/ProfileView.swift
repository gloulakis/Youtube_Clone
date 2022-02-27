//
//  ProfileView.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        VStack{
            Image("topAvatar")
            Text("My Profile")
            Button{
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Close Profile screen")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
