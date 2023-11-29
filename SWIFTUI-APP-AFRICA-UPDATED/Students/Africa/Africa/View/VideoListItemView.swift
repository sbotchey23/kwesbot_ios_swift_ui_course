//
//  VideoListItem.swift
//  Africa
//
//  Created by Kwesi A Botchey on 27/11/2023.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTIES
    let video: Video
    
    // MARK: - BODY
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZSTACK
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            } //: VSTACK
        } //: HSTACK
    }
}


// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    return VideoListItemView(video: videos[0])
        .padding()
}
