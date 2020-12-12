//
//  NetworkManager.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 12/7/20.
//

import Foundation
import Cocoa

class NetworkService : ObservableObject
{
  @Published var image = NSImage()
  @Published var caption = ""
  @Published var note = ""
  @Published var loading = false
  
  // http://www.lu9da.org/prop_graph/imagen1.8.jpg
  // http://www.hamqsl.com/solar101vhf.php
  // http://www.hamqsl.com/solar101sc.php
  // http://www.hamqsl.com/solarsystem.php
  // http://www.hamqsl.com/solargraph.php
  
  // ---------------------------------------
  
  // LOOK AT:
  // GitHub
  // SDWebImageSwiftUI is a SwiftUI image loading framework, which based on SDWebImage.
  
  // https://cocoacasts.com/fm-3-download-an-image-from-a-url-in-swift
  func retrieveImage(imageURL: String, imageCaption: String, imageNote: String) {
    
    let url = URL(string: imageURL)!
    
    image = NSImage()
    caption = ""
    note = ""
    loading = true
    
    DispatchQueue.global().async {
      // Fetch Image Data
      if let data = try? Data(contentsOf: url) {
        DispatchQueue.main.async { [self] in
          // Create Image and Update Image View
          image = NSImage(data: data)!
          caption = imageCaption
          note = imageNote
          loading = false
        }
      }
    }
  }
  
} // end class

// https://stackoverflow.com/questions/41562152/swift-3-download-jpeg-image-and-save-to-file-macos
//let IMAGE_URL = NSURL(string: "https://www.bing.com/az/hprichbg/rb/RossFountain_EN-AU11490955168_1920x1080.jpg")
//
//let networkService = NetworkService(url: IMAGE_URL!)
//
//networkService.downloadImage(completion: { (data) in
//
//    data.write(to: URL(string: "file://~/Pictures/image.jpg")!, atomically: false)
//
//})
