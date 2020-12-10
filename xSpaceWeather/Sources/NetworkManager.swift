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
//    lazy var configuration: URLSessionConfiguration = URLSessionConfiguration.default
//    lazy var session: URLSession = URLSession(configuration: self.configuration)
//
//    let url: NSURL
  
    @Published var image = NSImage()
    @Published var caption = ""
    @Published var note = ""
  
//    init(url: NSURL)
//    {
//        self.url = url
//    }
//
//    func downloadImage(completion: @escaping ((NSData) -> Void))
//    {
//        let request = NSURLRequest(url: self.url as URL)
//        let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) in
//            if error == nil {
//                if let httpResponse = response as? HTTPURLResponse {
//                    switch (httpResponse.statusCode) {
//                    case 200:
//                        if let data = data {
//                            completion(data as NSData)
//                        }
//                    default:
//                        print(httpResponse.statusCode)
//                    }
//                }
//            } else {
//              print("Error download data: \(String(describing: error?.localizedDescription))")
//            }
//        }
//        dataTask.resume()
//    }
  
  // http://www.lu9da.org/prop_graph/imagen1.8.jpg
  // http://www.hamqsl.com/solar101vhf.php
  // http://www.hamqsl.com/solar101sc.php
  // http://www.hamqsl.com/solarsystem.php
  // http://www.hamqsl.com/solargraph.php
  
  // ---------------------------------------
  // https://stackoverflow.com/questions/38165291/mac-swift-how-do-i-download-an-image-and-load-it-into-a-nsimageview
  func getImage(imageURL: String, imageCaption: String, imageNote: String) {
    image = NSImage(byReferencing:NSURL(string: imageURL)! as URL)
    caption = imageCaption
    note = imageNote
    //let imageView = NSImageView()
    //imageView.image = image
    //return image
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
