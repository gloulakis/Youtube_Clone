//
//  VideoRowView.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import SwiftUI

struct VideoRowView: View {
    var title:String
    var description: String
    var thumbnail: String
    var length: String
    var avatar: String
    
    var body: some View {
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(thumbnail)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 210)
                    .clipped()
                Text(length)
                    .font(.custom("System", size: 10))
                    .foregroundColor(.white)
                    .padding(5)
                    .background(
                        Color.black
                            .opacity(0.5)
                    )
                    .cornerRadius(5)
                    .padding(6)
            }
            HStack {
                Image(avatar)
                VStack(alignment: .leading){
                    Text(title)
                    Text(description)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                        .fixedSize(horizontal: true, vertical: false)
                }
                Spacer()
                
                Button{
                    
                } label: {
                    Image("menu")
                }.frame(width: 20, height: 44)
            }.padding(.horizontal)
        }.padding(.bottom, 20)
        
       
    }
}

struct VideoRowView_Previews: PreviewProvider {
    static var previews: some View {
        VideoRowView(
            title: "test",
            description: "test",
            thumbnail: "thumbnail3",
            length: "test",
            avatar: "test")
    }
}
