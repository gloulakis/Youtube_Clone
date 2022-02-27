//
//  HomeContentView.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import SwiftUI

struct HomeContentView: View {
    
    @StateObject private var viewModel = HomeContentViewModel()
    
    var body: some View {
        List{
            ForEach(viewModel.videos, id: \.id) { video in
                VideoRowView(
                    title: video.title,
                    description: video.fullDescription,
                    thumbnail: video.thumbnail_name,
                    length: video.video_duration,
                    avatar: video.owner_avatar
                )
                    .listRowInsets(EdgeInsets())
            }
            
            HStack{
                Spacer()
                Button {
                    addNewVideo()
                } label: {
                    Text("Load more")
                }
                Spacer()
            }
        }
        .listStyle(.plain)
        .onAppear {
            viewModel.fechVideos()
        }
        
    }
    
    func addNewVideo (){
        viewModel.addVideo(title: "Funny Videos", Desc: "test desc", thumbnail: "thumbnail4")
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
