//
//  VideoDetails.swift
//  SwiftUI-List-Starter
//
//  Created by Muhammad Bilal on 25/10/2022.
//

import Foundation
//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoDetail: View {
    
    var video: Video
    
    
    
    var body: some View {
        
        VStack(spacing: 13) {
            Image(video.imageName).resizable().scaledToFit().frame(height:200).cornerRadius(4)
            Text(video.title).fontWeight(.semibold).lineLimit(2)
            Text(video.description).font(.system(size: 16)).lineLimit(6).padding()
            
            Link(destination: video.url, label:{
                Text("Watch Now").bold().font(.title).frame(width: 200, height: 50).background(Color(.systemRed)).foregroundColor(.white).cornerRadius(10)

                
            })
            Spacer()
        

        }
    }
}

struct VideoDetail_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetail(video: VideoList.topTen.first! )
    }
}
