//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct ContentView: View {
    var videos :[Video]  = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetail(video: video), label: {
                    VStack {
                        HStack{
                            Image(video.imageName).resizable().scaledToFit().frame(height:70).cornerRadius(4)
                            VStack(alignment: .leading){
                                Text(video.title).fontWeight(.semibold).lineLimit(2)
                                Text(video.description)        .font(.system(size: 16)).lineLimit(2)
                                    
                            }
                            
                        }
                    }                })
            }
        }
        
//        Text("Hello, world!")
//            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
