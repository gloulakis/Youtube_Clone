//
//  HomeContentViewModel.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import Foundation

class HomeContentViewModel: ObservableObject {
    
    @Published var videos: [Video] = []
    
    func fechVideos(){
        // Get the path of the JSON file
        guard let url = Bundle.main.url(forResource: "videos", withExtension: "json") else {return }
        print(url)
        //Load the JSON file data type
        guard let data = try? Data(contentsOf: url) else {return}
        
        // Create a decoder for the JSON
        let decoder = JSONDecoder()
        
        do{
            //Decode the loaded Data type into an array of video type
            let videos = try decoder.decode([Video].self, from: data)
            self.videos = videos
            
        } catch let error {
            print ("Error of parsing Json: \(error.localizedDescription)")
            
        }
    }
    func addVideo (title: String, Desc: String, thumbnail: String){
        let video = Video(
            id: Int.random(in: 100...10000),
            title: title,
            short_description: Desc,
            thumbnail_name: thumbnail,
            owner_avatar: "Top Avatar",
            video_duration: "10:00",
            views: "3M",
            created:
                DateFormatter.localizedString(from:Date(),
                                              dateStyle: .none,
                                              timeStyle: .short)
        )
        
        videos.append(video)
    }
}
