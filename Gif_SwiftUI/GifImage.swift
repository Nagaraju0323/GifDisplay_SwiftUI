//
//  GifImage.swift
//  Gif_SwiftUI
//
//  Created by Nagaraju on 09/12/23.
//

import Foundation
import WebKit
import SwiftUI


struct GifImage:UIViewRepresentable {
   
    private let name: String
    
    init(name: String) {
        self.name = name
    }

    func makeUIView(context: Context) -> some UIView {

        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data,
                     mimeType:"image/gif" ,
                     characterEncodingName: "UTF-8",
                     baseURL: url.deletingLastPathComponent())
        return webView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.reloadInputViews()
    }
    
    
}

#Preview{
    GifImage(name: "Animated")
}
