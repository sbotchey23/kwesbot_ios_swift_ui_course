//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 30/11/2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
               // Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .opacity(0.5)
                .padding(6)
            , alignment: .topLeading
        )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW

#Preview {
    NavigationStack {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
