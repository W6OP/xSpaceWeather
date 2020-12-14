//
//  ContentView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 11/26/20.
//

import SwiftUI

struct ContentView: View {
  //@EnvironmentObject var networkService: NetworkService
  @StateObject var networkService = NetworkService()
  
    var body: some View {
      VStack {
        HStack {
          
          ButtonView(networkService: networkService)//.environmentObject(self.networkService)
          Spacer()
          
          ImageView(networkService: networkService)//.environmentObject(self.networkService)

          }  // outer HStack
      }
      .frame(minWidth: 800, maxWidth: 800, minHeight: 700, maxHeight: 700)
      .border(Color.green)
    } // outer container VStack
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.environmentObject(NetworkService())
    }
}

// Image(uiImage: UIImage(named: "yourImage")!)

// Image("yourImage")//
// .resizable()
// .scaledToFit()
