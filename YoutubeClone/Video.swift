//
//  Video.swift
//  YoutubeClone
//
//  Created by Georgios Loulakis on 26.02.22.
//

import Foundation
import SwiftUI

struct Video: Codable {
    var id: Int
    var title: String
    var short_description: String
    var thumbnail_name: String
    var owner_avatar: String
    var video_duration: String
    var views: String
    var created: String
    
    var fullDescription: String {
        return "\(short_description)- \(views)-\(created)"
    }
}




/*
 [
     {
         "id": 1,
         "title": "Tranquility",
         "short_description": "Chill vibes ASMR soap cutting",
         "thumbnail_name": "thumbnail1",
         "owner_avatar": "avatar1",
         "video_duration": "28:34",
         "views": "3M views",
         "created": "5 days ago"
     }
 ]

 */
