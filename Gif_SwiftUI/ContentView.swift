//
//  ContentView.swift
//  Gif_SwiftUI
//
//  Created by Nagaraju on 09/12/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            GifImage(name: "Animated")
                .frame(width: 400, height: 400)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
